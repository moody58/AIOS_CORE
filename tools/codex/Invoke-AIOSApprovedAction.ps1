# Integrated candidate: exact external approval pin -> reservation -> acquired engine.
# Real scope requires verified installed setup and exact external approval pins.
# No software attestation of GUI human origin or backend enforcement.
[CmdletBinding()]
param(
    [ValidateSet('Apply','Rollback')][string]$Mode='Apply',
    [ValidateSet('IsolatedTest','AIOSCoreDocument','AIOSCorePilot')][string]$ExecutionScope='IsolatedTest',
    [string]$ExpectedEntrypointSha256='', [string]$DescriptorPath='', [string]$DescriptorSha256='',
    [string]$RequestPath='', [string]$ExpectedRequestSha256='', [string]$DecisionPath='',
    [string]$ExternallyApprovedDecisionSha256='', [string]$JournalPath='', [string]$JournalSha256='',
    [ValidateSet('NONE','AFTER_FIRST_WRITE','CHANGE_DECISION_BEFORE_WRITE')][string]$TestFault='NONE',
    [string]$SetupReceiptPath='', [string]$SetupReceiptSha256='', [string]$DeclaredGuiSandboxMode=''
)
& {
    $ErrorActionPreference='Stop';Set-StrictMode -Version 2.0
    if($ExecutionScope -ceq 'AIOSCorePilot'){throw 'STOP: legacy pilot lane is suspended.'}
    $real=$ExecutionScope -ceq 'AIOSCoreDocument'
    if($real){
        if($PSCommandPath -cne 'C:\AIOS_GITHUB\AIOS_CORE\tools\codex\Invoke-AIOSApprovedAction.ps1'){throw 'STOP: approved real bridge must be installed.'}
        if($TestFault -cne 'NONE'){throw 'STOP: real bridge excludes test faults.'}
        if($DeclaredGuiSandboxMode -cne 'read-only'){throw 'STOP: GUI read-only declaration required.'}
    }elseif($SetupReceiptPath -cne '' -or $SetupReceiptSha256 -cne '' -or $DeclaredGuiSandboxMode -cne ''){throw 'STOP: real activation arguments excluded from isolated scope.'}
    if($PSVersionTable.PSEdition -cne 'Desktop' -or $PSVersionTable.PSVersion.Major -ne 5 -or $PSVersionTable.PSVersion.Minor -ne 1){throw 'STOP Windows PowerShell Desktop 5.1 required.'}
    foreach($item in Get-ChildItem Env:){if($item.Name -like 'GIT_*' -and $item.Name -ine 'GIT_PAGER'){throw 'STOP: custom Git environment requires targeted review.'}}
    if(-not [string]::IsNullOrEmpty($env:CODEX_HOME)){throw 'STOP: CODEX_HOME override requires targeted review.'}
    if($ExpectedEntrypointSha256 -cnotmatch '^[0-9a-f]{64}$' -or
        (Get-FileHash -LiteralPath $PSCommandPath -Algorithm SHA256).Hash.ToLowerInvariant() -cne $ExpectedEntrypointSha256){throw 'STOP: approved wrapper pin mismatch.'}
    $pins=@{
        'DOC-HANDOFF.schema.json'='3442b8cce3cac0556b71acf9c33808b17a3d7cdf6d8896c828bdc8e6ab0ba357'
        'DocumentApply.Adapter.ps1'='f77d0140a6a57f86d9f9564e23523ff89c1002e9ac8be7c309d4c493c4306997'
        'DocumentSafety.Core.ps1'='5151846b30d4e11e2eb83072d220e1369e49ce22499fe950fc1afbd0cb5fd4cc'
        'Handoff.Core.ps1'='00213e73e04f443a9215091d32f05fe22d2389b3e4ff57758541ce369781b62e'
        'Invoke-AIOSDocumentApply.ps1'='5a4ac04a1c803176f7b1f169d0ae97bbd7d232a561c216019c7780992f7412b6'
        'ProductionScope.Adapter.ps1'='3eef98648e4b0a02766438f173e81dbfe92e020ff98297516d2007a2158cb334'
        'Recovery.Core.ps1'='650a52268a7c9f267112c2bac78136d8d8ade780132641479a433b232d68696e'
        'StrictJson.cs'='156755dbcef7e922b9ba16b2a2e551555891a198d883301760cc6222f00d7421'
        'Transaction.Core.ps1'='44f1a9abf397982095ecbaf34469e502343a28b34336ca24a6b6fb76f110ba97'
        'ApprovalProtocol.Core.ps1'='130417e6bc1ac3d40b4c605d6c626632e5905ca453fef93d27b102e9d6d5261c'
    }
    foreach($name in $pins.Keys){
        $path=Join-Path $PSScriptRoot $name
        if((Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant() -cne $pins[$name]){throw ('STOP: integrated dependency pin mismatch: '+$name)}
    }
    $runtime=$PSScriptRoot
    . (Join-Path $runtime 'DocumentSafety.Core.ps1')
    . (Join-Path $runtime 'Handoff.Core.ps1')
    if($null -eq ('AIOSHandoff.StrictJson' -as [type])){Add-Type -Path (Join-Path $runtime 'StrictJson.cs') -ErrorAction Stop}
    foreach($name in $pins.Keys){Assert-AIOSExistingFile (Join-Path $PSScriptRoot $name)}
    Assert-AIOSExistingFile $PSCommandPath
    . (Join-Path $runtime 'Transaction.Core.ps1')
    . (Join-Path $runtime 'Recovery.Core.ps1')
    . (Join-Path $runtime 'DocumentApply.Adapter.ps1')
    . (Join-Path $runtime 'ProductionScope.Adapter.ps1')
    . (Join-Path $PSScriptRoot 'ApprovalProtocol.Core.ps1')
    $script:AIOSExecutionScope=$ExecutionScope
    if($real){Initialize-AIOSReleaseActivation $SetupReceiptPath $SetupReceiptSha256}
    $entry=Join-Path $runtime 'Invoke-AIOSDocumentApply.ps1';$script:AIOSRunningEntryPath=$entry
    $durable=Read-AIOSEntrypointDescriptor $DescriptorPath $DescriptorSha256 $entry
    $root=$durable.Context.Root
    Assert-AIOSApprovalFixture $root
    $mutex=New-Object Threading.Mutex($false,('Local\AIOS_DOCUMENT_TRANSACTION_'+(Get-AIOSHash (ConvertTo-AIOSBytes $root.ToLowerInvariant()))))
    $owned=$false
    $script:AIOSApprovedOriginalStateGuard=$null
    try{
        $owned=$mutex.WaitOne(0)
        if(-not $owned){throw 'STOP: approved action root mutex is busy.'}
        # Rebuild the durable context under the same lock as approval and every engine write.
        $durable=Read-AIOSEntrypointDescriptor $DescriptorPath $DescriptorSha256 $entry
        $c=$durable.Context;$d=$durable.Descriptor
        $valid=Read-AIOSApprovalProtocol $root $RequestPath $ExpectedRequestSha256 $DecisionPath $ExternallyApprovedDecisionSha256 $Mode
        $request=Read-AIOSApprovalPinnedJson $RequestPath $ExpectedRequestSha256
        $folder=[IO.Path]::GetDirectoryName($RequestPath)
        $check=Read-AIOSCanonicalJson $d.check_path
        $state=$(if($Mode -ceq 'Apply'){$c.Handoff.files[0].pre_sha256}else{$c.Handoff.files[0].post_sha256})
        if($request.state_sha256 -cne $state){throw 'STOP: approved request transaction phase mismatch.'}
        if($Mode -ceq 'Apply'){
            if($JournalPath -cne '' -or $JournalSha256 -cne ''){throw 'STOP: Apply must not supply a rollback journal.'}
            $evidencePath=$d.check_path;$evidenceHash=$d.check_sha256
        }else{
            Assert-AIOSPinnedEvidence $JournalPath $JournalSha256
            [void](Read-AIOSAppliedRecovery $durable $JournalPath $JournalSha256)
            $evidencePath=$JournalPath;$evidenceHash=$JournalSha256
        }
        $plan=[ordered]@{format='AIOS-APPROVED-COMMAND-PLAN/1.0';scope=$(if($real){'AIOS_CORE_DOCUMENT_RANGES_ONLY'}else{'ISOLATED_TEST_ONLY'});mode=$Mode;root=$root;
            wrapper_path=$PSCommandPath;wrapper_sha256=$ExpectedEntrypointSha256;descriptor_path=$DescriptorPath;
            descriptor_sha256=$DescriptorSha256;request_path=$RequestPath;request_id=$valid.request_id;
            decision_path=$DecisionPath;journal_path=$JournalPath;journal_sha256=$JournalSha256;test_fault=$TestFault;
            setup_receipt_path=$SetupReceiptPath;setup_receipt_sha256=$SetupReceiptSha256;declared_gui_sandbox_mode=$DeclaredGuiSandboxMode}
        $planBytes=ConvertTo-AIOSBytes (ConvertTo-AIOSCanonicalJson $plan)
        if((Get-AIOSHash $planBytes) -cne (Get-AIOSHash ([IO.File]::ReadAllBytes((Join-Path $folder 'command_plan.bin'))))){throw 'STOP: exact command plan mismatch.'}
        $live=@{handoff=$c.HandoffPath;policy=$c.PolicyPath;profile=$c.ProfilePath;baseline=$d.baseline_path;
            descriptor=$DescriptorPath;check=$d.check_path;entrypoint=$entry;adapter=$script:AIOSProductionAdapterPath;
            transaction=$script:AIOStransactionModulePath;diff=$check.predicted_diff_path}
        foreach($artifact in $request.artifacts){
            if($live.ContainsKey($artifact.label)){Assert-AIOSPinnedEvidence $live[$artifact.label] $artifact.sha256}
            elseif($artifact.label -ceq 'journal'){
                if($Mode -ceq 'Rollback'){Assert-AIOSPinnedEvidence $JournalPath $artifact.sha256}
                elseif($artifact.sha256 -cne (Get-AIOSHash (ConvertTo-AIOSBytes "NOT_APPLICABLE_CHECK_STAGE`n"))){throw 'STOP: Apply journal placeholder mismatch.'}
            }
        }
        Assert-AIOSTransactionBindings $c
        Assert-AIOSTransactionState $c ([bool[]]@($Mode -ceq 'Rollback'))
        # Windows named mutexes are reentrant for this thread. The outer lock remains
        # held throughout Reserve and the acquired engine, including their finally blocks.
        $reservation=Reserve-AIOSApprovalProtocol $root $RequestPath $ExpectedRequestSha256 $DecisionPath $ExternallyApprovedDecisionSha256 $Mode
        $leasePins=@(
            @{path=$RequestPath;sha256=$ExpectedRequestSha256},
            @{path=$DecisionPath;sha256=$ExternallyApprovedDecisionSha256},
            @{path=$reservation.path;sha256=$reservation.sha256},
            @{path=$PSCommandPath;sha256=$ExpectedEntrypointSha256}
        )
        foreach($name in $pins.Keys){$leasePins+=@{path=(Join-Path $PSScriptRoot $name);sha256=$pins[$name]}}
        if($real){$leasePins+=@{path=$SetupReceiptPath;sha256=$SetupReceiptSha256}}
        foreach($artifact in $request.artifacts){$leasePins+=@{path=(Join-Path $folder ($artifact.label+'.bin'));sha256=$artifact.sha256}}
        $script:AIOSApprovedLease=@{pins=$leasePins;calls=0;fault=$TestFault;decision_path=$DecisionPath}
        $script:AIOSApprovedOriginalStateGuard=${function:Assert-AIOSTransactionState}
        function Assert-AIOSTransactionState {
            param([object]$Context,[bool[]]$Applied)
            & $script:AIOSApprovedOriginalStateGuard $Context $Applied
            $script:AIOSApprovedLease.calls++
            if($script:AIOSApprovedLease.fault -ceq 'CHANGE_DECISION_BEFORE_WRITE' -and $script:AIOSApprovedLease.calls -eq 3){
                # Sealed, isolated fault scenario: cancellation/drift at the engine's final guard.
                [IO.File]::WriteAllBytes($script:AIOSApprovedLease.decision_path,(ConvertTo-AIOSBytes "INJECTED_DECISION_DRIFT`n"))
            }
            foreach($pin in $script:AIOSApprovedLease.pins){Assert-AIOSPinnedEvidence $pin.path $pin.sha256}
        }
        $legacy=[ordered]@{format=$(if($real){'AIOS-DOCUMENT-BRIDGE-AUTHORIZATION/1.0'}else{'AIOS-ENTRYPOINT-TEST-APPROVAL/2.1'});scope=$(if($real){'AIOS_CORE_DOCUMENT_RANGES_ONLY'}else{'ISOLATED_TEST_ONLY'});action=$Mode.ToUpperInvariant();root=$root;
            handoff_sha256=$c.HandoffHash;policy_sha256=$c.Handoff.policy_sha256;profile_sha256=$c.Handoff.project_profile.profile_sha256;
            check_executor_sha256=$c.Handoff.executor_sha256;transaction_module_sha256=(Get-AIOSHash ([IO.File]::ReadAllBytes($script:AIOStransactionModulePath)));
            evidence_path=$evidencePath;evidence_sha256=$evidenceHash;entrypoint_sha256=$c.Handoff.executor_sha256;
            adapter_sha256=(Get-AIOSHash ([IO.File]::ReadAllBytes($script:AIOSProductionAdapterPath)));
            descriptor_sha256=$DescriptorSha256;baseline_sha256=$d.baseline_sha256}
        if($real){
            $script:AIOSApprovedBridgeLease=[pscustomobject]@{root=$root;action=$Mode.ToUpperInvariant();wrapper_path=$PSCommandPath;wrapper_sha256=$ExpectedEntrypointSha256;
                request_path=$RequestPath;request_id=$valid.request_id;request_sha256=$ExpectedRequestSha256;decision_path=$DecisionPath;decision_sha256=$ExternallyApprovedDecisionSha256;
                reservation_path=$reservation.path;reservation_sha256=$reservation.sha256;command_plan_sha256=(Get-AIOSHash $planBytes);pins=$leasePins}
            foreach($key in @('request_sha256','decision_sha256','reservation_sha256','wrapper_sha256','command_plan_sha256')){$legacy[$key]=$script:AIOSApprovedBridgeLease.$key}
        }
        $legacyPath=Join-Path $folder 'engine_approval.json'
        Write-AIOSNewBytes $legacyPath (ConvertTo-AIOSBytes (ConvertTo-AIOSCanonicalJson $legacy))
        $legacyHash=Get-AIOSHash ([IO.File]::ReadAllBytes($legacyPath))
        $engineFault=$(if($TestFault -ceq 'AFTER_FIRST_WRITE'){'AFTER_FIRST_WRITE'}else{'NONE'})
        if($Mode -ceq 'Apply'){
            $core=Invoke-AIOSIsolatedTransactionApply $c $d.recovery_root $d.check_path $legacyPath $legacyHash $engineFault
            [void](Read-AIOSAppliedRecovery $durable $core.journal_path $core.journal_sha256)
        }else{$core=Invoke-AIOSIsolatedTransactionRollback $c $d.recovery_root $JournalPath $legacyPath $legacyHash $engineFault}
        Assert-AIOSPinnedEvidence $reservation.path $reservation.sha256
        Assert-AIOSPinnedEvidence $RequestPath $ExpectedRequestSha256
        Assert-AIOSPinnedEvidence $DecisionPath $ExternallyApprovedDecisionSha256
        $receipt=[ordered]@{format='AIOS-APPROVED-ACTION-EXECUTION/1.0';scope=$(if($real){'AIOS_CORE_DOCUMENT_RANGES_ONLY'}else{'ISOLATED_TEST_ONLY'});mode=$Mode;root=$root;
            request_sha256=$ExpectedRequestSha256;decision_sha256=$ExternallyApprovedDecisionSha256;wrapper_sha256=$ExpectedEntrypointSha256;
            command_plan_sha256=(Get-AIOSHash $planBytes);reservation_path=$reservation.path;reservation_sha256=$reservation.sha256;
            engine_approval_path=$legacyPath;engine_approval_sha256=$legacyHash;core_receipt=$core;transaction_integrated=$true;
            human_origin_attested=$false;gui_effective_permissions_attested=$false;real_apply_enabled=$real;production_ready=$false}
        $receiptPath=Join-Path $folder 'execution_receipt.json'
        Write-AIOSNewBytes $receiptPath (ConvertTo-AIOSBytes (ConvertTo-AIOSCanonicalJson $receipt))
        [ordered]@{result=('PASS_APPROVED_'+$Mode.ToUpperInvariant()+$(if($real){'_AIOS_CORE_ONLY'}else{'_ISOLATED_ONLY'}));receipt=$core;
            execution_receipt_path=$receiptPath;execution_receipt_sha256=(Get-AIOSHash ([IO.File]::ReadAllBytes($receiptPath)));
            reservation=$reservation;transaction_integrated=$true;human_origin_attested=$false;
            gui_effective_permissions_attested=$false;real_apply_enabled=$real;production_ready=$false}|ConvertTo-Json -Depth 12
    }finally{
        $script:AIOSApprovedBridgeLease=$null
        if($null -ne $script:AIOSApprovedOriginalStateGuard){Set-Item Function:\Assert-AIOSTransactionState $script:AIOSApprovedOriginalStateGuard}
        if($owned){$mutex.ReleaseMutex()};$mutex.Dispose()
    }
}
