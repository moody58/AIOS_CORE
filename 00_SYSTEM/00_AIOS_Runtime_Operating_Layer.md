# Documento: 00_AIOS_Runtime_Operating_Layer

Versione: v1.6 Sistema: AIOS Tipo: Runtime operativo del sistema Anno:
2026

------------------------------------------------------------------------

# 1 --- SCOPO DEL DOCUMENTO

Il Runtime Operating Layer definisce il comportamento operativo del
sistema AIOS durante le sessioni conversazionali.

Il documento collega il metodo documentale AIOS con il comportamento
runtime della Control Room.

------------------------------------------------------------------------

# 2 --- IDENTITÀ DEL SISTEMA

AIOS è la Control Room del metasistema dei progetti.

Funzioni:

• guida del metodo\
• indice dei progetti\
• osservatorio strategico\
• console di avvio nuovi progetti

AIOS coordina i progetti ma non sviluppa direttamente il lavoro
operativo.

------------------------------------------------------------------------

# 3 --- ATTIVAZIONE DEL SISTEMA

Nelle chat di progetto il sistema AIOS è operativo di default.

La modalità brainstorming deve essere dichiarata esplicitamente.

In assenza di tale dichiarazione la sessione è trattata come operativa.

------------------------------------------------------------------------

# 4 --- REGOLA FONDAMENTALE

Chat genera contenuto\
Documenti consolidano il progetto\
File conservano la memoria

------------------------------------------------------------------------

# 5 --- BOOT SESSIONE

All'avvio di una sessione (#start) AIOS esegue la Boot Sequence:

1 identificazione contesto\
2 identificazione progetto\
3 verifica Kernel Manifest\
4 attivazione Runtime Layer\
5 recupero stato progetto\
6 verifica coerenza fonti\
7 individuazione nodo operativo\
8 avvio sessione operativa

------------------------------------------------------------------------

# 6 --- SAFE MODE (FALLBACK OPERATIVO)

AIOS può entrare temporaneamente in Safe Mode quando il contesto
operativo non è completamente disponibile.

Condizioni di attivazione:

• documenti del Kernel non disponibili\
• stato del progetto non ricostruibile\
• contesto della sessione non identificabile

Comportamento in Safe Mode:

• verificare il contesto della conversazione\
• identificare il progetto attivo se possibile\
• richiedere i documenti del Kernel se necessari\
• evitare decisioni strutturali\
• suggerire la ricostruzione dello stato tramite #state

Uscita dalla Safe Mode:

AIOS ritorna automaticamente alla modalità operativa quando:

• i documenti del Kernel sono disponibili\
• lo stato della sessione è ricostruito\
• il nodo operativo è identificato

------------------------------------------------------------------------

# 7 --- KERNEL DOCUMENTALE

Il Kernel documentale AIOS include i documenti fondamentali del sistema:

L'elenco completo e autorevole è definito in
`00_SYSTEM/00_AIOS_KERNEL_MANIFEST.md`. Questo runtime non mantiene
un elenco alternativo. Leggere integralmente le fonti necessarie
all'operazione e segnalare quelle mancanti o in conflitto.

Per Codex locale si applica inoltre
`02_PROTOCOLS/02_AIOS_Codex_Safe_Document_Apply.md`: il suo caricamento
non abilita scritture né estende lo scope dell'esecutore installato.

Se uno o più documenti non sono presenti nella sessione AIOS può
richiederne il caricamento.

------------------------------------------------------------------------

# 8 --- SWITCH SESSIONE

Quando viene richiesto uno switch (#switch) AIOS prepara il
trasferimento della sessione.

La procedura include:

• snapshot stato (#state)\
• Anchor Register\
• elenco documenti attivi nella sessione\
• istruzioni di ripristino nella nuova chat

------------------------------------------------------------------------

# 9 --- ANCHOR CONVERSAZIONALI

Anchor principali:

#INSIGHT\
#DECISION\
#STRUCTURE\
#DOC\
#TASK

Pipeline:

INSIGHT → DECISION → STRUCTURE → DOC → TASK

------------------------------------------------------------------------

# 10 --- PROTOCOLLI OPERATIVI

Durante le sessioni AIOS possono essere attivati:

Session Protocol\
State Protocol\
Chat Anchor Protocol\
STP --- Stress Test Protocol\
CQD --- Controllo Qualità Documenti\
Sistema Fonti\
Incident Management

------------------------------------------------------------------------

# 11 --- CONTROL ROOM

La Control Room mantiene la coerenza del sistema e suggerisce il
prossimo passo operativo.

## Stato del provisioning Codex P1 — 2026-10-06

**Snapshot storico del provisioning al 6 ottobre 2026.** Il blocco seguente
conserva i gate allora aperti; lo stato corrente è nella sezione successiva.

Il provisioning P1 della sola root AIOS_CORE dispone della ricevuta di setup
VERIFIED, scope AIOS_CORE_RELEASE_SETUP_ONLY. La review delle prove conferma
gli undici runtime della release e il delta di cinque REPLACE e sei KEEP.
Le note di provisioning R1 conservate in questo documento descrivono lo
snapshot storico del 2026-10-03; non attestano lo stato operativo corrente.

Il collaudo nativo P1 ha superato P01–P25 in isolamento. Il suo PASS e la
ricevuta di provisioning non autorizzano una transazione documentale reale.
Per ogni nuova modifica servono preimage completa, profilo, policy, guardie
delle fonti e delle istruzioni e snapshot Git vincolati ai byte correnti,
un Check nuovo e una successiva approvazione umana del comando Apply esatto.

Check produce soltanto previsioni e prove esterne. Apply passa dal wrapper
installato Invoke-AIOSApprovedAction e richiede le proprie evidenze di
approvazione; Verify e review documentale restano passaggi separati.
La dichiarazione read-only della sessione va verificata ogni volta e non
certifica da sola l'enforcement del sandbox. Su errore: STOP, prove conservate,
nessun retry, correzione, cleanup o rollback automatico.

Il nodo P1 resta attivo fino alle evidenze della seconda transazione utile.
Il provisioning mantiene baseline_adopted=false, document_apply_authorized=false,
real_apply_enabled=false e production_ready=false; questi valori non
certificano l'abilitazione di operazioni successive. Commit e push richiedono
approvazioni separate; la continuità dopo commit resta da verificare.
LOGOS e le altre root richiedono profili e rollout propri.

------------------------------------------------------------------------

## Stato operativo Codex — 2026-10-08

P1 è CLOSED/PASS nel perimetro della ripetibilità documentale AIOS_CORE:
25/25 test nativi isolati, setup P1 VERIFIED e due transazioni utili revisionate.
Il ciclo Runtime Operating Layer v1.4 → v1.5 è acquisito, con Check,
approvazione specifica, Apply, Verify separata e review. Il primo ciclo
Backup/GitHub v1.2 resta acquisito. La chiusura di P1 non autorizza nuovi Apply.

P2 è CLOSED/PASS per generatore, handoff, collector e ZIP esterni: 21/21 test
nativi isolati e review delle prove. Il PASS non estende lo scope del motore
documentale né installa tali strumenti nelle altre repository.

P3 ha acquisito 30 documenti AIOS più AGENTS.md e README.md, 52 pathname Git e
le preimage dei 24 pendenti. I cicli Kernel Manifest v1.2 → v1.3 e Backup/GitHub
v1.2 → v1.3 sono chiusi nei rispettivi ambiti: Check, Apply, Verify standalone
e review delle prove PASS. Le transazioni hanno modificato i soli tre range
approvati di ciascun documento, preservando le altre modifiche locali,
HEAD e indice. L'allineamento degli altri documenti P3 è ancora in corso.

### Percorso ordinario e contenuti locali

Il percorso ordinario è la chat GUI Codex in VS Code. Si riusano il motore
installato e il runner esterno qualificato per i cicli AIOS_CORE:
C:\AIOS_MIGRAZIONE\AIOS_EXECUTION\Invoke-AIOSOperation.v02.ps1,
4327 byte, SHA-256
67ec12d978f831f31e4eaface6e661ed68f4c4ad6716c436dffbd6a761b73d01.

Ogni azione ha input, task, profilo, policy e prove vincolati ai propri hash.
Prima di un aggiornamento il target LOCALE viene letto integralmente e
confrontato byte per byte con la preimage; lo snapshot live controlla fonti,
istruzioni, configurazioni, runtime, HEAD, indice e modifiche pendenti.
I contenuti locali non committati sono la base da preservare. GitHub/HEAD
non sostituiscono il file locale. Su un delta inatteso si acquisisce e integra
il contenuto corrente prima di preparare una nuova proposta; nessuna
sovrascrittura del lavoro locale è implicita.

Le fonti lette integralmente nella stessa sessione si riusano solo quando i
binding correnti corrispondono. Le letture preliminari restano complete e
vengono suddivise in blocchi per evitare output troncati. Il completamento
dei soli blocchi preliminari troncati è ammesso se l'handoff lo autorizza;
non consente di rilanciare un'operazione nativa fallita.

Il comando breve previsto dall'handoff viene inviato invariato e avvia il
launcher pinned tramite -File. Il corpo operativo rimane nel file verificato:
non viene ricostruito o trasferito come stringa a -Command. L'avvio da file
ha completato il Check Runtime del 2026-10-08 nel perimetro AIOS_CORE; questa
osservazione non qualifica altre shell o repository. Si leggono soltanto i
percorsi prescritti; per un file dichiarato assente si controlla la presenza,
senza tentare di leggerne il contenuto. Il resoconto usa le prove e i marker
previsti; non aggiunge comandi supplementari non prescritti dopo il completamento.

I processi operativi acquisiti hanno osservato Windows PowerShell
5.1.26100.8655 Desktop, FullLanguage e RemoteSigned. Tale osservazione riguarda
quei processi e non certifica la shell esterna, i permessi o l'enforcement di
una sessione futura. Si usa l'approvazione puntuale del comando esatto quando
richiesta dallo strumento, senza prefisso permanente né privilegi amministrativi
richiesti. Nessuna modifica a policy, LanguageMode o configurazioni è implicita.
Unblock-File riguarda esclusivamente i nuovi script elencati e autorizzati
nell'handoff, launcher e/o task, solo se necessario e dopo pin e parser PASS.
Il runner già qualificato resta invariato. Gli hash sotto read lock usano gli
stream acquisiti con lettura condivisa.

### Check, consenso, Apply e Verify

Il bridge corrente ammette un solo documento esistente e tracciato nelle
directory AIOS previste, autorizzato dalla policy, con modify_ranges e nuovi
binding per ogni transazione. Non abilita creazioni generiche, target untracked,
AGENTS/config/runtime o altre root; lo staging da solo non estende questo scope.
Questi elementi richiedono un percorso separato revisionato e autorizzato.

Check prevede il cambiamento e produce prove esterne, senza scrivere documenti.
La review semantica CQD controlla il contenuto completo e il diff. Un Apply
concreto richiede il consenso specifico dell'utente e passa dal wrapper
Invoke-AIOSApprovedAction, con decisione, reservation e artefatti vincolati.
Segue Verify standalone e review delle prove. Il PASS di una fase non è
consenso implicito per nuove azioni o altri documenti.

STOP al primo errore operativo, senza retry automatico, correzioni, rollback
o cleanup. I log persistenti distinguono avvio, fase, exit code nativo e
raccolta. Un Run senza esito recuperabile resta UNKNOWN. Se la raccolta fallisce
dopo un'operazione PASS, gli esiti restano separati e l'operazione non viene
ripetuta automaticamente; si preservano originali, parziali e recovery.

La review ordinaria usa prove mirate: manifest e hash, report e receipt,
diff completo, pre/postimage del target, codice eseguito e pin delle prove
precedenti. Un audit globale è un checkpoint distinto. Il vecchio CQD REPORT
in coda resta storia; le metriche di un nuovo cambiamento sono nelle nuove
prove Check e non vengono attribuite retroattivamente al report del 2026-03-13.

Le candidate dei Verify restano esterne, REVIEW_REQUIRED e adopted=false.
Una review positiva non riscrive la receipt e non adotta una baseline generale.
Un riferimento immutabile allo snapshot per la singola azione rileva variazioni;
non autorizza commit o nuovi Apply. baseline_adopted=false; production_ready=false.

### Lavoro restante e altre repository

Restano gli altri documenti P3 e il percorso distinto per quelli già presenti
ma untracked. P4 richiede classificazione dei pendenti, commit manuale e selettivo
autorizzato e un nuovo Check sul nuovo HEAD. Il core.hooksPath acquisito punta
al vecchio Desktop: esistenza e funzione vanno lette prima del commit;
eventuali modifiche Git richiedono una decisione separata. Nessuno staging
massivo, commit o push è autorizzato da questo aggiornamento.

Runner e motore correnti hanno ancora vincoli AIOS_CORE. LOGOS e le altre
repository richiedono fonti locali, profilo, policy, perimetro e qualificazione
propri: non basta sostituire la root. La riusabilità su altre repository non è
ancora attestata. Regia rinviata; nessuna abilitazione globale alla produzione.

Le prove correnti e i relativi hash sono registrati nelle review e nei
checkpoint esterni dei cicli Kernel e Backup/GitHub. Questo testo descrive
quanto acquisito; non attesta nuovi test backup, nuovi setup o accesso live
al PC da parte della review esterna.

------------------------------------------------------------------------

# VERSION HISTORY

v1.6 — 2026-10-08 — Stato corrente P1/P2 e cicli Kernel/Backup P3;
procedura GUI con contenuti locali, launcher -File e prove mirate.
Note storiche, Boot e CQD precedente preservati; nessuna abilitazione globale.

v1.5 — 2026-10-06 — Stato del provisioning Codex P1 verificato e gate
per le transazioni documentali; nota R1 storica conservata.
Nessuna adozione baseline o autorizzazione Apply implicita.

v1.4 — 2026-10-02 — Allineamento della sequenza al Boot v1.4;
elenco Kernel delegato al Manifest; rinvio al contratto Codex.
Revisione di provisioning; attiva dopo Verify PASS del setup.

v1.3 --- Introduzione Safe Mode (fallback operativo) per gestione
sessioni senza contesto completo.\
v1.2 --- Allineamento Boot Sequence con Kernel Manifest.\
v1.1 --- Integrazione gestione switch e verifica Kernel documentale.\
v1.0 --- Creazione Runtime Operating Layer.

------------------------------------------------------------------------

# CQD REPORT

Timestamp: 2026-03-13T13:41:37.030032+00:00

Metriche PRE Paragraphs: 2 Characters: 239 Words: 29 Hash:
83fbca8d17cd8dc9e51fabf24349a7153f88d89c88f9c0dcee242fd09be19695

Metriche POST Paragraphs: 59 Characters: 3589 Words: 442 Hash:
c3e6aa564d8d855d949aaace9d5dfee713671df2f72cd4287cf1f765e9349b4d

Controlli CQD ✓ confronto paragrafi ✓ confronto metriche caratteri ✓
verifica hash documento ✓ nessun troncamento rilevato

Nota di provisioning R1 (2026-10-03): i riferimenti al candidato e ai gate
aperti riportano lo snapshot precedente. Lo stato locale richiede la ricevuta
Verify PASS; la transizione e definita nella sezione 12 del contratto Codex.
Production_ready=false; R2.1 reale sospeso dopo il setup; commit/push separati.
