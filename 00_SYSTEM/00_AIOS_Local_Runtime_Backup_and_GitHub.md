# 00_AIOS_Local_Runtime_Backup_and_GitHub

Versione: v1.0  
Data: 2026-10-01  
Sistema: AIOS  
Tipo: Configurazione runtime locale / backup / GitHub readiness  
Stato: ATTIVO

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

## VERSION HISTORY

### v1.0 — 2026-10-01

Creazione documento attivo dopo migrazione locale AIOS, riallineamento backup, VS Code e verifica scrittura GitHub.
