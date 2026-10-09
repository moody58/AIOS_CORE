# 00_AIOS_Local_Runtime_Backup_and_GitHub

Versione: v1.3
Data: 2026-10-08
Sistema: AIOS
Tipo: Configurazione runtime locale / backup / GitHub readiness
Stato: ciclo Kernel P3 verificato; allineamento documentale e riuso multi-repo in corso

---

## 1. SCOPO

Questo documento registra la configurazione locale attiva di AIOS dopo la migrazione dalla precedente working copy sotto Desktop/OneDrive alla nuova root locale:

`C:\AIOS_GITHUB`

Serve come riferimento operativo per:

- root locale canonica;
- configurazione backup AIOS/ADEXIMA;
- task Windows;
- separazione dei dati privati;
- stato VS Code;
- verifica di scrittura GitHub;
- recovery disponibili;
- stato residuo delle working copy locali.

La cronologia completa della migrazione resta disponibile nei materiali di recovery sotto `C:\AIOS_MIGRAZIONE`.

---

## 2. ROOT OPERATIVA LOCALE

Root canonica attiva:

`C:\AIOS_GITHUB`

Repository presenti:

- `ADEXIMA`
- `AIOS_CORE`
- `AIOS_PROJECT_TEMPLATE`
- `ASPRI`
- `LOGOS`
- `LOGOS_ENGINE`

La precedente root:

`C:\Users\moody\OneDrive\Desktop\m00dy\AIOS_GITHUB`

è stata neutralizzata e rinominata in:

`C:\Users\moody\OneDrive\Desktop\m00dy\AIOS_GITHUB_PRE_MIGRAZIONE_20261001`

Non deve più essere usata come working copy operativa.

---

## 3. VS CODE

VS Code deve essere aperto dalla nuova root:

`C:\AIOS_GITHUB`

Verifica eseguita:

- terminale VS Code in `C:\AIOS_GITHUB`;
- repository LOGOS risolto in `C:/AIOS_GITHUB/LOGOS`;
- repository AIOS_PROJECT_TEMPLATE risolto in `C:/AIOS_GITHUB/AIOS_PROJECT_TEMPLATE`;
- repository LOGOS_ENGINE risolto in `C:/AIOS_GITHUB/LOGOS_ENGINE`.

Il workspace `LOGOS_COMPARE.code-workspace` usa percorso relativo `../..` e non contiene riferimenti assoluti a OneDrive.

---

## 4. GITHUB WRITE READINESS

È stato eseguito un test reale di scrittura su:

`https://github.com/moody58/LOGOS.git`

Procedura:

1. creazione branch temporanea locale;
2. commit vuoto;
3. push branch su GitHub;
4. verifica exit code;
5. cancellazione branch remota;
6. cancellazione branch locale;
7. ritorno a `main`.

Branch di test:

`aios-write-test-20261001-204641`

Esito push:

`exit code 0`

Conclusione:

la scrittura GitHub dalla nuova root `C:\AIOS_GITHUB` è stata verificata con successo e il precedente errore 403 non si presenta nella configurazione Git locale attuale.

Il test non dimostra retroattivamente che OneDrive fosse l'unica causa del precedente 403; dimostra che la configurazione corrente consente correttamente la scrittura Git.

---

## 5. SISTEMA BACKUP CENTRALIZZATO

Directory operativa:

`C:\AIOS_GITHUB\tools\backup`

File principali:

- `AIOS_DAILY_7ZIP_ROTATION.bat`
- `AIOS_WEEKLY_7ZIP_ROTATION.bat`
- `ADEXIMA_WEEKLY_7ZIP_ROTATION.bat`
- `ADEXIMA_BACKUP_AUTO.bat`
- `ADEXIMA_MIRROR.ffs_batch`
- `ADEXIMA_CONDIVISIONE.ffs_batch`
- `Aggiorna-Backup-AIOS.ps1`
- `migrazione-backup.json`

Task Windows verificati:

1. `AIOS Backup Daily Incremental`
2. `AIOS Backup Weekly Snapshot`
3. `ADEXIMA Backup Weekly`
4. `ADEXIMA_MIRROR_AUTO`
5. `ADEXIMA_CONDIVISIONE_AUTO`
6. `ADEXIMA_BACKUP_AUTO`

Per i BAT Task Scheduler usa:

`C:\Windows\System32\cmd.exe /d /c call "<script>"`

`cmd.exe` è soltanto l'interprete; gli script operativi sono quelli sotto `C:\AIOS_GITHUB\tools\backup`.

---

## 6. BACKUP AIOS

### Daily

Sorgente:

`C:\AIOS_GITHUB`

Destinazione:

`C:\Users\moody\iCloudDrive\AIOS_BACKUP`

Comportamento:

- archivio 7z;
- test integrità;
- eliminazione archivio corrotto;
- retention daily 30 giorni.

### Weekly

Sorgente:

`C:\AIOS_GITHUB`

Destinazione:

`C:\Users\moody\iCloudDrive\AIOS_BACKUP\WEEKLY`

Comportamento:

- snapshot 7z;
- test integrità;
- retention weekly 180 giorni.

---

## 7. BACKUP ADEXIMA E DATI PRIVATI

Repo ADEXIMA:

`C:\AIOS_GITHUB\ADEXIMA`

Area privata consulente:

`C:\Users\moody\iCloudDrive\ADEXIMA\90_Condivisione_Consulente`

Regola vincolante:

- NON deve entrare nella repo Git ADEXIMA;
- NON deve essere copiata dentro `C:\AIOS_GITHUB\ADEXIMA`;
- DEVE continuare a essere inclusa nei backup di sicurezza ADEXIMA;
- DEVE continuare a essere sincronizzata tramite il task dedicato FreeFileSync.

### ADEXIMA_BACKUP_AUTO

Include nello stesso archivio:

1. `C:\AIOS_GITHUB\ADEXIMA`
2. `C:\Users\moody\iCloudDrive\ADEXIMA\90_Condivisione_Consulente`

Destinazioni:

- cloud: `C:\Users\moody\iCloudDrive\ADEXIMA_BACKUP`
- locale: `C:\Users\moody\OneDrive\Desktop\m00dy\Adexima\BACKUP_LOCALE_ADEXIMA`

Retention: ultime 5 copie.

### ADEXIMA Weekly

Include entrambe le sorgenti sopra.

Destinazione:

`C:\Users\moody\iCloudDrive\ADEXIMA_BACKUP\WEEKLY`

Retention: 180 giorni.

### Mirror generale

Sorgente:

`C:\AIOS_GITHUB\ADEXIMA`

Destinazione:

`C:\Users\moody\Il mio Drive\ADEXIMA_MIRROR`

La cartella `90_Condivisione_Consulente` è esclusa dal mirror generale.

### Condivisione consulente

Sorgente:

`C:\Users\moody\iCloudDrive\ADEXIMA\90_Condivisione_Consulente`

Destinazione:

`C:\Users\moody\Il mio Drive\ADEXIMA_MIRROR\90_Condivisione_Consulente`

---

## 8. TEST BACKUP ESEGUITI

### ADEXIMA Backup Auto

Archivio test:

`ADEXIMA_2026-10-01_20-16.7z`

Esito:

- exit code 0;
- copia cloud e locale create;
- SHA-256 identico tra le due copie;
- test 7-Zip: `Everything is Ok`;
- repo ADEXIMA presente;
- `ADEXIMA\90_Condivisione_Consulente` presente.

### ADEXIMA Weekly

Archivio test:

`ADEXIMA_WEEKLY_2026-10-01.7z`

Esito:

- exit code 0;
- test integrità superato;
- repo ADEXIMA presente;
- cartella consulente presente nello stesso archivio.

Il messaggio `Nessun file corrisponde ai criteri di ricerca specificati` emesso da `forfiles` è innocuo quando non esistono ancora archivi più vecchi della retention prevista.

---

## 9. MIGRAZIONE TASK E VERIFY

Script di migrazione:

`C:\AIOS_MIGRAZIONE\AIOS_BACKUP_UPDATE\Aggiorna-Backup-AIOS.ps1`

Fasi utilizzate:

- `-Mode Check`
- `-Mode Apply`
- `-Mode Verify`

Esito finale:

- 6 script operativi installati;
- 6 azioni Task Scheduler aggiornate;
- pianificazioni conservate;
- destinazioni conservate;
- script originali non cancellati;
- nessun backup avviato automaticamente durante l'Apply.

Rollback configurazione:

`C:\AIOS_MIGRAZIONE\CONFIGURAZIONI_BACKUP\20261001_202416_187`

---

## 10. AIOS_PROJECT_TEMPLATE — RECOVERY

Durante la migrazione è stato rilevato un commit locale divergente:

`6caeb08 update`

Il contenuto locale risultava ridondante rispetto alla versione remota corrente di `UNIVERSAL_PROJECT_RUNTIME_INSTRUCTIONS.md`.

Stato finale:

- `main` riallineata a `origin/main`;
- commit locale preservato nella branch `migration-preserve-6caeb08`;
- recovery esterno: `C:\AIOS_MIGRAZIONE\AIOS_PROJECT_TEMPLATE_RECOVERY_20261001`.

La branch di preservazione non è parte del flusso operativo normale e deve essere rimossa solo in un nodo di cleanup esplicito.

---

## 11. LOGOS_ENGINE — MODIFICA LOCALE PRESERVATA

Repository:

`C:\AIOS_GITHUB\LOGOS_ENGINE`

Stato Git verificato:

- `main` allineata a `origin/main`;
- file locale modificato: `runtime\LOGOS_ENGINE_DATABASE_v1.0.xlsx`;
- modifica NON staged;
- modifica NON committata automaticamente.

Recovery esterno:

`C:\AIOS_MIGRAZIONE\LOGOS_ENGINE_RECOVERY_20261001\LOGOS_ENGINE_DATABASE_v1.0.xlsx`

SHA-256 recovery:

`0D52A055AE4E05EC7621BD57F96E644CECD904BE1353E242101B489FFD87335D`

La modifica deve essere valutata nel nodo LOGOS_ENGINE competente prima di qualsiasi commit.

---

## 12. RECOVERY DA CONSERVARE

Non eliminare senza nodo di cleanup esplicito:

- `C:\AIOS_MIGRAZIONE\CONFIGURAZIONI_BACKUP\20261001_202416_187`
- `C:\AIOS_MIGRAZIONE\AIOS_PROJECT_TEMPLATE_RECOVERY_20261001`
- `C:\AIOS_MIGRAZIONE\LOGOS_ENGINE_RECOVERY_20261001`
- `C:\Users\moody\OneDrive\Desktop\m00dy\AIOS_GITHUB_PRE_MIGRAZIONE_20261001`
- branch locale `migration-preserve-6caeb08`.

---

## 13. STATO OPERATIVO FINALE

Configurazione attiva:

- root operativa unica: `C:\AIOS_GITHUB`;
- VS Code riallineato alla nuova root;
- vecchia working copy OneDrive neutralizzata;
- backup centralizzati e verificati;
- area consulente fuori da Git ma inclusa nei backup;
- push GitHub reale verificato con successo;
- AIOS_PROJECT_TEMPLATE riallineato;
- LOGOS_ENGINE con modifica locale preservata e non staged;
- recovery disponibili.

---

## 14. REGOLE FUTURE

1. Non riaprire la vecchia working copy OneDrive.
2. Non spostare `90_Condivisione_Consulente` dentro ADEXIMA Git.
3. Non cancellare recovery e vecchia root senza cleanup esplicito.
4. Non committare automaticamente `LOGOS_ENGINE_DATABASE_v1.0.xlsx`.
5. Per modifiche al sistema backup usare `Check -> Apply -> Verify`.
6. Verificare sempre i task reali in Utilità di pianificazione dopo modifiche.
7. Usare `C:\AIOS_GITHUB` come unica root locale operativa.

---

## 15. CODEX — AIOS_CORE

### 15.1 — Ambito e responsabilità

Aggiornamento dello stato acquisito al 2026-10-05. Questa sezione riguarda
la gestione dei documenti AIOS_CORE dalla chat grafica Codex in VS Code,
con contenuti e decisioni preparati in ChatGPT. La repository è
`C:\AIOS_GITHUB\AIOS_CORE`, branch `main`.

ChatGPT prepara contenuto, diff completo e DOC-HANDOFF immutabile.
Codex legge le fonti del progetto, controlla gli hash ed esegue soltanto
il change-set delimitato. L'utente revisiona le prove e approva
separatamente l'azione documentale concreta. Un setup verificato
non costituisce approvazione dell'Apply.

La regia AIOS resta rinviata a una sessione dedicata. Questo aggiornamento
non modifica Regia, State, Registry o eventi canonici. Le sezioni 1–14
e la cronologia v1.1/v1.0 restano conservate integralmente.

### 15.2 — Setup R2.2 acquisito

Il runtime R2.2 comprende undici file in `tools/codex`. Il Plan approvato
prevedeva sei sostituzioni, due creazioni e tre file mantenuti.
Sono state eseguite una Install e una Verify separata, entrambe con
exit code 0: `PASS_SETUP_INSTALL_PENDING_VERIFY` e
`PASS_SETUP_VERIFY_ONLY`, stato `VERIFIED`.

Evidenze originali:
`C:\AIOS_MIGRAZIONE\AIOS_R22_RELEASE_SETUP\bb58356ac0304d418e01201881636a8c`.
Plan approvato SHA-256:
`d52b8891600995253c2c5024664b64adfdb7d015b9c35b10342e4d03af8560df`.
Ricevuta Verify SHA-256:
`70d02732e85f1e739695c25e2bfef80e91b83494e30222457b8416f6051d3d40`.

La review delle prove ha confermato 94 controlli di coerenza su 42 file,
19 journal concatenati e 14 backup. Si tratta di review delle evidenze,
non di una nuova esecuzione Windows o di un audit indipendente del sistema.
Host/PID e stderr separato di Install/Verify restano non verificati.
Lo snapshot post-setup riporta sette file modificati e sedici untracked;
HEAD e indice sono invariati nelle ricevute. Nessun Git write è autorizzato.

I collaudi nativi isolati acquisiti hanno esito positivo: core 24/24,
profilo 15/15, protocollo di approvazione 18/18 e bridge integrato 14/14.
Per la release, L01–L06 sono passati nella prima suite; L07–L15 sono
passati nella successiva esecuzione delta 9/9. Questi risultati non
equivalgono a un unico collaudo completo della release finale né a
una verifica del flusso documentale sulla repository reale.

### 15.3 — Chat grafica e approvazioni

Il percorso operativo concordato è la normale chat Codex in VS Code.
Le prove della CLI e del launcher R1 descrivono un percorso storico;
non attestano i permessi della chat grafica e non sono il percorso
da usare per il nuovo flusso documentale.

La sessione GUI diagnosticata dichiara `sandbox_mode=read-only`.
Il suo enforcement, `approval_policy`, `approvals_reviewer` e la
versione effettivamente caricata dell'estensione restano non verificati.
La selezione di un profilo e il contenuto TOML non sostituiscono
l'evidenza runtime della sessione corrente.

Una richiesta tecnica per il comando marcatore
`AIOS_GUI_HUMAN_APPROVAL_20261005_A01` è stata eseguita una volta;
l'utente ha dichiarato di averla approvata personalmente. Questa
dichiarazione vale per quella richiesta e non approva un futuro Apply,
non identifica automaticamente il reviewer e non certifica il sandbox.

La configurazione utente è controllata con guardia semantica operativa;
preferenze del modello e impronta di acquisizione restano distinguibili.
La configurazione di progetto è fissata per hash nello snapshot della
transazione. Nessuna riparazione o modifica automatica dell'ambiente.

### 15.4 — Primo documento e flusso controllato

Il primo target R2.2 è questo documento ufficiale. L'operazione consentita
è `modify_ranges`: intestazione, sezione 15 e nuova voce della cronologia.
Gli altri byte del documento e tutti i file estranei sono protetti.
Il bridge richiede fonti, istruzioni, profilo, policy e snapshot di
transazione immutabili; verifica anche runtime installato, HEAD, indice,
stato locale e identità remota prima di produrre la proposta del Check.

Il flusso concordato è:

1. Check reale in lettura, con diff predetto e metriche; nessuna scrittura
   documentale nella repository.
2. Review semantica CQD delle prove e del diff completo.
3. Approvazione umana separata dell'Apply preciso, vincolata agli hash.
4. Esecuzione tramite `Invoke-AIOSApprovedAction.ps1`, con journal,
   recovery e controllo dei byte estranei alla transazione.
5. Verify separata e review delle prove native prima di considerare
   acquisito l'aggiornamento documentale.

Il setup non ha eseguito alcun Apply documentale. Questo testo registra
lo stato precedente alla prima transazione R2.2 e non anticipa il suo
Check, Apply o Verify. `production_ready=false`; la baseline generale
non è adottata. Lo snapshot immutabile della singola transazione serve
soltanto a rilevare variazioni rispetto allo stato acquisito.

STOP su mismatch o stato PARTIAL; conservare tutte le prove e il recovery.
Nessun retry, undo, rollback, cleanup, reset, clean, stash, commit o push
automatico. Rollback e operazioni Git di scrittura richiedono decisioni
e autorizzazioni separate. Non riattivare il vecchio bridge R2.1.

Il pilota storico R1 rimane concluso; non ripeterne la creazione.
Recovery da conservare:
`C:\AIOS_MIGRAZIONE\CODEX_DOCUMENT_APPLY_EVIDENCE\a96e54587b0b44c1999009e7b1a3fb6e\recovery\transaction_37464423fe784f838ace88061cfd5c96`.
Journal finale SHA-256:
`ccf31e993d15129214094cfff2fa55e117a01a0028b5ee9b999998744eba549e`.

### 15.5 — Stato dell'integrazione AIOS e LOGOS

Sono acquisiti i collaudi isolati e l'installazione verificata del runtime
AIOS_CORE. Restano il primo ciclo documentale reale Check–review–Apply–Verify
e la verifica del riuso della procedura dalla chat grafica.
L'integrazione documentale globale non è ancora completata.

LOGOS è il passo successivo, con lettura delle sue fonti, profilo specifico,
perimetro e approvazione propri. Non trasferire automaticamente policy,
baseline, permessi o autorizzazioni AIOS_CORE alla repository LOGOS.
Il test GitHub storico della sezione 4 resta riferito a LOGOS e non
certifica la scrittura GitHub di AIOS_CORE.

---

## 16. CODEX — stato acquisito all’8 ottobre 2026

Questa sezione aggiorna lo stato corrente del percorso Codex AIOS_CORE.
Le sezioni 1–15 e le note R1 restano conservate come registrazione dei nodi
precedenti: la sezione 15 descrive il 5 ottobre, prima dei cicli successivi.
Il setup bb583... lì citato non è la receipt P1 corrente. I test GitHub e
backup storici non attestano nuovi test eseguiti con questo aggiornamento.

### 16.1 — Risultati acquisiti e limiti

P1 è CLOSED/PASS nel perimetro della ripetibilità documentale AIOS_CORE:
25/25 test nativi isolati, setup P1 VERIFIED e ciclo Runtime Operating Layer
v1.4 → v1.5 con Check, approvazione specifica, Apply, Verify separata e review.
Il primo ciclo Backup/GitHub v1.2 resta acquisito.

P2 è CLOSED/PASS per generatore, handoff, collector e ZIP esterni: 21/21 test
nativi isolati e review delle prove. Questo PASS non estende lo scope del
motore documentale né installa tali strumenti nelle altre repository.

P3 ha acquisito 30 documenti AIOS più AGENTS.md e README.md, 52 pathname Git e
le preimage dei 24 pendenti. Il ciclo Kernel Manifest v1.2 → v1.3 del 7 ottobre
è chiuso nel proprio perimetro: Check V04, Apply V02, Verify standalone e
review esterne PASS. È stato scritto un solo documento nei tre range approvati;
le altre modifiche locali, HEAD e indice sono rimasti invariati nelle prove.
L’allineamento P3 e la classificazione dei file da committare restano in corso.

La candidata prodotta dal Verify Kernel è esterna, con stato REVIEW_REQUIRED
e adopted=false; la review positiva non modifica questa receipt e non adotta
una baseline generale. Uno snapshot fissato per la singola azione serve a
rilevare variazioni locali; non autorizza commit, nuovi Apply o altre root.
baseline_adopted=false; production_ready=false.

### 16.2 — Percorso GUI e runner esterno riusato

Il percorso ordinario è la chat GUI Codex in VS Code. Il runner esterno riusato
è C:\AIOS_MIGRAZIONE\AIOS_EXECUTION\Invoke-AIOSOperation.v02.ps1,
4327 byte, SHA-256
67ec12d978f831f31e4eaface6e661ed68f4c4ad6716c436dffbd6a761b73d01.
I Run Apply V02 e Verify Kernel hanno osservato Windows PowerShell
5.1.26100.8655 Desktop, FullLanguage e RemoteSigned. Questo contesto riguarda
quei processi: non identifica la shell esterna dello strumento né certifica
in modo permanente permessi o enforcement delle sessioni successive.

Ogni azione usa task e input fissati per hash, parser prima dell’avvio,
lettura integrale del target LOCALE e controllo live dello snapshot prima
di qualsiasi scrittura. I contenuti non committati sono la base da preservare;
GitHub/HEAD non sostituiscono il file locale. Gli hash sotto read lock usano
stream già acquisiti; runner e helper con lettura condivisa sono riusati.
I log persistenti distinguono avvio, fase, exit code nativo e raccolta.
Un avvio senza esito recuperabile resta UNKNOWN e non diventa PASS.

La sessione dichiara i propri permessi; quando necessario si usa la richiesta
puntuale del comando esatto con require_escalated, senza prefisso permanente
o privilegi amministrativi richiesti. Nessuna modifica a policy, LanguageMode
o configurazioni è implicita. Unblock-File riguarda soltanto il nuovo task
esplicitamente autorizzato e solo dopo verifica del pin e del parser.

La review ordinaria usa prove mirate: manifest e hash, report e receipt,
diff completo e pre/postimage del target, codice eseguito e riferimenti alle
prove immutabili. Un audit globale resta un checkpoint distinto. Il numero
di archivi o il solo esito del parser non misurano la maturità della procedura.

### 16.3 — Operazioni future ancora da completare

Il bridge corrente ammette un solo documento esistente e tracciato nelle
directory AIOS previste, autorizzato dalla policy, con modify_ranges e nuovi
binding per ogni transazione. Non abilita creazioni generiche, target untracked,
AGENTS/config/runtime o altre root. Lo staging da solo non amplia questo scope.
Questi elementi richiedono un percorso separato revisionato e autorizzato.

Dopo Check e review semantica CQD, un Apply concreto richiede il consenso
specifico dell’utente; segue Verify separata e review. STOP al primo errore
operativo, senza retry automatico, correzioni, rollback o cleanup. Se la raccolta
fallisce dopo un’operazione PASS, gli esiti restano separati e l’operazione
non viene ripetuta automaticamente.

P4 richiede classificazione dei pendenti, commit manuale e selettivo autorizzato
e un nuovo Check sul nuovo HEAD. Il core.hooksPath acquisito punta al vecchio
Desktop: prima del commit occorre una lettura mirata della sua esistenza e
funzione; eventuali modifiche Git richiedono una decisione separata.

Il runner V02 è qualificato per i cicli AIOS_CORE acquisiti e contiene ancora
vincoli di questa root. Il riuso in LOGOS o altre repository richiede profilo,
fonti locali, perimetro e qualifica propri; non basta sostituire il pathname.
Regia rinviata. Nessun nuovo Apply, commit/push o adozione baseline è autorizzato
semplicemente da questa descrizione dello stato.

### 16.4 — Riferimenti delle prove acquisite

- Receipt setup P1: C:\AIOS_MIGRAZIONE\AIOS_R22_RELEASE_SETUP\3c5fcbdddec14e1f95bfebe77d2a5012\setup_receipt.json;
  SHA-256 ded760e17ba66d784f62f219c2795ebb542222eca9b8fadfd68123d7f5d0e80e.
- ZIP acquisizione P3: C:\AIOS_MIGRAZIONE\AIOS_P3_ACQUISITION\9dc48297c81d4fcdb81863148c705ebf.zip;
  SHA-256 df2ce5c38318d7f9fda782bb101ec7dc96e8ada110ab1c9f17574fa00a50cfed.
- ZIP Check Kernel V04: C:\AIOS_MIGRAZIONE\AIOS_P3_DOCUMENT_CHECK_EVIDENZE\a39f6c2b4e6342d1abb03afedc8db0cd.zip;
  SHA-256 04e03f57ef4c1553ea218ab694f035469f9b26f805043b5bcf29d30e5bf56d21.
- ZIP Apply Kernel V02: C:\AIOS_MIGRAZIONE\AIOS_P3_DOCUMENT_APPLY_EVIDENZE\6881cb10223b466cb017983d8b6dbd00.zip;
  SHA-256 e5462881da3476e613826bf0e1014668cafcc39c151d6bb59d5384bf9887a6d4.
- ZIP Verify Kernel: C:\AIOS_MIGRAZIONE\AIOS_P3_DOCUMENT_VERIFY_EVIDENZE\f9bc20c94f7d4285b932ed4814e575ef.zip;
  SHA-256 fa778f78ab117f42f444376d7d207f90e25831a7a7f4fdf7e812ae83eb7e02c1.
- Kernel locale post Apply acquisito: 5704 byte, SHA-256
  2a47fa45f4ba68f1cc8ff92e2efdb2c886348511235a29ea4d70e03569c5ef55.

Le review attestano coerenza delle prove ricevute, non una nuova osservazione
indipendente del PC. Per ogni azione successiva rimangono necessari i controlli
live del contenuto locale, delle fonti, dello snapshot e dei permessi dichiarati.

---

## VERSION HISTORY

### v1.3 — 2026-10-08

Registrazione di P1/P2 e del ciclo Kernel P3 chiuso; runner V02 e prove mirate.
Conservati byte per byte sezioni 1–15, cronologia precedente e nota R1.
Allineamento residuo, commit selettivi e qualifica delle altre repo ancora aperti.

### v1.2 — 2026-10-05

Aggiornamento della sezione Codex al setup R2.2 verificato e al percorso
concordato nella chat grafica VS Code. Distinti i collaudi isolati,
l'installazione e il ciclo documentale reale ancora da verificare.
Conservate le sezioni 1–14 e la cronologia precedente; regia rinviata.

### v1.1 — 2026-10-02

Integrazione candidata dello stato Codex AIOS_CORE: pilota acquisito,
CLI Read Only, launcher proposto e gate di provisioning separato.
Le sezioni 1–14 sono conservate integralmente.

### v1.0 — 2026-10-01

Creazione documento attivo dopo migrazione locale AIOS, riallineamento backup, VS Code e verifica scrittura GitHub.

Nota di provisioning R1 (2026-10-03): i riferimenti al candidato e ai gate
aperti riportano lo snapshot precedente. Lo stato locale richiede la ricevuta
Verify PASS; la transizione e definita nella sezione 12 del contratto Codex.
Production_ready=false; R2.1 reale sospeso dopo il setup; commit/push separati.
