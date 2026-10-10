# Release entrypoint: installed real Check/Verify, isolated full fixture lane.
# Production execution requires exact installed path and separately approved human action. No installer, commits or pushes.
[CmdletBinding()]
param(
    [ValidateSet('Check','Apply','Verify','Rollback')][string]$Mode='Check',
    [ValidateSet('IsolatedTest','AIOSCorePilot','AIOSCoreDocument')][string]$ExecutionScope='IsolatedTest',
    [Parameter(Mandatory=$true)][ValidatePattern('^[0-9a-f]{64}$')][string]$ExpectedEntrypointSha256,
    [string]$HandoffPath='', [string]$PolicyPath='', [string]$ProfilePath='', [string]$ExpectedHandoffSha256='',
    [string]$BaselinePath='', [string]$ExpectedBaselineSha256='',
    [string]$RecoveryRoot='', [string]$DescriptorPath='', [string]$DescriptorSha256='',
    [string]$ApprovalPath='', [string]$ApprovedApprovalSha256='',
    [string]$JournalPath='', [string]$JournalSha256='',
    [string]$SetupReceiptPath='', [string]$SetupReceiptSha256='', [string]$DeclaredGuiSandboxMode=''
)
& {
    $ErrorActionPreference='Stop'
    Set-StrictMode -Version 2.0
    # Fail before opening a real root, reading Git, loading code, or writing evidence.
    $script:AIOSExecutionScope=$ExecutionScope
    $script:AIOSRunningEntryPath=[IO.Path]::GetFullPath($PSCommandPath)
    # Real writes enter only through the approved wrapper after verified setup.
    # This external candidate cannot act as an installed real entrypoint.
    if($ExecutionScope -ceq 'AIOSCorePilot'){throw 'STOP: legacy pilot lane is suspended.'}
    if($ExecutionScope -ceq 'AIOSCoreDocument'){
        if(@('Apply','Rollback') -ccontains $Mode){throw 'STOP: real Apply/Rollback require Invoke-AIOSApprovedAction; direct entry is disabled.'}
        if($PSCommandPath -cne 'C:\AIOS_GITHUB\AIOS_CORE\tools\codex\Invoke-AIOSDocumentApply.ps1'){throw 'STOP: real entrypoint must be installed.'}
        if($DeclaredGuiSandboxMode -cne 'read-only'){throw 'STOP: GUI read-only declaration required.'}
    }
    if($PSVersionTable.PSEdition -cne 'Desktop' -or $PSVersionTable.PSVersion.Major -ne 5 -or $PSVersionTable.PSVersion.Minor -ne 1){throw 'STOP: Windows PowerShell 5.1 required.'}
    # Only GIT_PAGER is admitted: every Git invocation explicitly uses --no-pager.
    # Leave the inherited environment intact; reject all other GIT_* names.
    foreach($item in Get-ChildItem Env:){
        if($item.Name -like 'GIT_*' -and $item.Name -ine 'GIT_PAGER'){throw ('STOP: custom Git environment requires targeted review: '+$item.Name)}
    }
    $entryPath=$PSCommandPath
    if((Get-FileHash -LiteralPath $entryPath -Algorithm SHA256).Hash.ToLowerInvariant() -cne $ExpectedEntrypointSha256){throw 'STOP: entrypoint pin mismatch.'}
    $bindings=@{
        'DocumentSafety.Core.ps1'='5151846b30d4e11e2eb83072d220e1369e49ce22499fe950fc1afbd0cb5fd4cc'
        'Handoff.Core.ps1'='00213e73e04f443a9215091d32f05fe22d2389b3e4ff57758541ce369781b62e'
        'StrictJson.cs'='156755dbcef7e922b9ba16b2a2e551555891a198d883301760cc6222f00d7421'
        'DOC-HANDOFF.schema.json'='3442b8cce3cac0556b71acf9c33808b17a3d7cdf6d8896c828bdc8e6ab0ba357'
        'Transaction.Core.ps1'='44f1a9abf397982095ecbaf34469e502343a28b34336ca24a6b6fb76f110ba97'
        'Recovery.Core.ps1'='650a52268a7c9f267112c2bac78136d8d8ade780132641479a433b232d68696e'
        'DocumentApply.Adapter.ps1'='f77d0140a6a57f86d9f9564e23523ff89c1002e9ac8be7c309d4c493c4306997'
        'ProductionScope.Adapter.ps1'='493cb585f6a171cff43ef4d47094e60557b224d702d3001db8b50dd886701869'
        'ApprovalProtocol.Core.ps1'='130417e6bc1ac3d40b4c605d6c626632e5905ca453fef93d27b102e9d6d5261c'
    }
    foreach($name in $bindings.Keys){
        $path=Join-Path $PSScriptRoot $name
        if(-not (Test-Path -LiteralPath $path -PathType Leaf) -or (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant() -cne $bindings[$name]){throw ('STOP: entrypoint dependency pin mismatch: '+$name)}
    }
    . (Join-Path $PSScriptRoot 'DocumentSafety.Core.ps1')
    . (Join-Path $PSScriptRoot 'Handoff.Core.ps1')
    if($null -eq ('AIOSHandoff.StrictJson' -as [type])){Add-Type -Path (Join-Path $PSScriptRoot 'StrictJson.cs') -ErrorAction Stop}
    foreach($name in $bindings.Keys){Assert-AIOSExistingFile (Join-Path $PSScriptRoot $name)}
    . (Join-Path $PSScriptRoot 'Transaction.Core.ps1')
    . (Join-Path $PSScriptRoot 'Recovery.Core.ps1')
    . (Join-Path $PSScriptRoot 'DocumentApply.Adapter.ps1')
    . (Join-Path $PSScriptRoot 'ProductionScope.Adapter.ps1')
    . (Join-Path $PSScriptRoot 'ApprovalProtocol.Core.ps1')
    if($ExecutionScope -ceq 'AIOSCoreDocument'){Initialize-AIOSReleaseActivation $SetupReceiptPath $SetupReceiptSha256}
    Assert-AIOSPlainDirectory $PSScriptRoot
    if($Mode -ceq 'Check'){
        if($ExpectedHandoffSha256 -cnotmatch '^[0-9a-f]{64}$' -or $ExpectedBaselineSha256 -cnotmatch '^[0-9a-f]{64}$'){throw 'STOP: handoff and baseline pins required.'}
        $c=New-AIOSEntrypointContext $HandoffPath $PolicyPath $ProfilePath $entryPath $ExpectedHandoffSha256 $RecoveryRoot $BaselinePath $ExpectedBaselineSha256
        Assert-AIOSTransactionScope $c $RecoveryRoot
        # Same root mutex as Apply/Rollback, not the separate historical Check mutex.
        $mutex=New-Object Threading.Mutex($false,('Local\AIOS_DOCUMENT_TRANSACTION_'+(Get-AIOSHash (ConvertTo-AIOSBytes $c.Root.ToLowerInvariant()))))
        $owned=$false
        try{
            $owned=$mutex.WaitOne(0)
            if(-not $owned){throw 'STOP: another entrypoint transaction owns this root.'}
            $prediction=Get-AIOSHandoffPrediction $c
            $evidence=Join-Path ([IO.Path]::GetDirectoryName($RecoveryRoot)) ('check_'+[Guid]::NewGuid().ToString('N'))
            [void][IO.Directory]::CreateDirectory($evidence)
            Assert-AIOSPlainDirectory $evidence
            $records=@();$diff=@('AIOS DOC-HANDOFF: predicted diff only. No repository documents written.')
            for($i=0;$i -lt $prediction.Count;$i++){
                $r=$prediction[$i];$before=Join-Path $evidence ('{0:D3}_before.md' -f $i);$after=Join-Path $evidence ('{0:D3}_after.md' -f $i)
                Write-AIOSNewBytes $before $r.Before;Write-AIOSNewBytes $after $r.After
                $rows=Read-AIOSGit $c.Root @('diff','--no-ext-diff','--no-textconv','--no-index','--',$before,$after) @(0,1) @('core.autocrlf=false','core.eol=lf','core.safecrlf=false')
                Assert-AIOSDiffRoundTrip $rows $r.Before $r.After
                Assert-AIOSDocumentDeltaWhitespace $c.Root $before $after $rows
                $diff+=('TARGET: '+$r.File.path+' / '+$r.File.operation);$diff+=$rows
                $records+=[ordered]@{path=$r.File.path;operation=$r.File.operation;predicted_sha256=$r.File.post_sha256;metrics=Get-AIOSMetrics $r.After}
            }
            $diffPath=Join-Path $evidence 'predicted.diff.txt'
            Write-AIOSNewBytes $diffPath (ConvertTo-AIOSBytes (($diff -join "`n")+"`n"))
            Assert-AIOSTransactionState $c ([bool[]]@($false))
            $report=[ordered]@{protocol='AIOS-DOC-HANDOFF-CHECK/0.3';result='PASS_CHECK_ONLY';collected_utc=[DateTime]::UtcNow.ToString('o');
                handoff_sha256=$c.HandoffHash;root=$c.Root;head=$c.Handoff.repository.expected_head;remote_sha=$c.Handoff.repository.expected_upstream_sha;
                index_unchanged=$true;repository_documents_written=0;production_ready=$false;effective_codex_permissions=$(if($ExecutionScope -ceq 'AIOSCoreDocument'){'GUI_DECLARED_READ_ONLY_NOT_ENFORCEMENT_ATTESTED'}else{'SYNTHETIC_FIXTURE_ONLY'});
                cqd_semantic_review=$(if($ExecutionScope -ceq 'AIOSCoreDocument'){'EXTERNAL_REVIEW_REQUIRED'}else{'ISOLATED_TEST_ONLY'});predicted_diff_roundtrip='PASS';predicted_diff_path=$diffPath;
                predicted_diff_sha256=Get-AIOSHash ([IO.File]::ReadAllBytes($diffPath));files=$records}
            $checkPath=Join-Path $evidence 'check_report.json'
            Write-AIOSNewBytes $checkPath (ConvertTo-AIOSBytes (ConvertTo-AIOSCanonicalJson $report))
            $descriptor=Save-AIOSEntrypointDescriptor $c $RecoveryRoot $checkPath
            [ordered]@{result='PASS_ENTRYPOINT_CHECK_ONLY';check_path=$checkPath;descriptor_path=$descriptor.Path;descriptor_sha256=$descriptor.Hash;
                real_apply_enabled=$false;production_ready=$false;repository_documents_written=0;index_unchanged=$true}|ConvertTo-Json -Depth 6
        }finally{if($owned){$mutex.ReleaseMutex()};$mutex.Dispose()}
        return
    }
    if($DescriptorSha256 -cnotmatch '^[0-9a-f]{64}$'){throw 'STOP: descriptor pin required.'}
    $durable=Read-AIOSEntrypointDescriptor $DescriptorPath $DescriptorSha256 $entryPath
    $c=$durable.Context;$d=$durable.Descriptor
    if($Mode -cne 'Verify' -and $ApprovedApprovalSha256 -cnotmatch '^[0-9a-f]{64}$'){throw 'STOP: separately pinned approval required.'}
    if($Mode -ceq 'Apply'){
        $receipt=Invoke-AIOSIsolatedTransactionApply $c $d.recovery_root $d.check_path $ApprovalPath $ApprovedApprovalSha256
        # Reuse durable recovery verification, not just the engine success flag.
        [void](Read-AIOSAppliedRecovery $durable $receipt.journal_path $receipt.journal_sha256)
        $result='PASS_ENTRYPOINT_APPLY_VERIFIED'
    }else{
        if($JournalSha256 -cnotmatch '^[0-9a-f]{64}$'){throw 'STOP: journal pin required.'}
        [void](Read-AIOSAppliedRecovery $durable $JournalPath $JournalSha256)
        if($Mode -ceq 'Verify'){
            # Export only after an independent full recovery verification, under
            # the same root mutex as Check/Apply/Rollback. Never adopt the result.
            $next=Save-AIOSNextBaselineCandidate $durable $JournalPath $JournalSha256
            $receipt=[pscustomobject]@{state='APPLIED';journal_path=$JournalPath;journal_sha256=$JournalSha256;index_unchanged=$true;next_baseline=$next}
            $result='PASS_ENTRYPOINT_VERIFY_ONLY'
        }else{
            $receipt=Invoke-AIOSIsolatedTransactionRollback $c $d.recovery_root $JournalPath $ApprovalPath $ApprovedApprovalSha256
            $result='PASS_ENTRYPOINT_ROLLBACK'
        }
    }
    Assert-AIOSPinnedEvidence $durable.Path $durable.Hash
    [ordered]@{result=$result;mode=$Mode;receipt=$receipt;descriptor_sha256=$durable.Hash;
        real_apply_enabled=$false;production_ready=$false;
        repository_documents_written=0;
        fixture_documents_written=$(if($ExecutionScope -ceq 'IsolatedTest' -and $Mode -cne 'Verify'){1}else{0})}|ConvertTo-Json -Depth 6
}
