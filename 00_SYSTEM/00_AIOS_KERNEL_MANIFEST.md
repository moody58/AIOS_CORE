# Documento: 00_AIOS_KERNEL_MANIFEST

Versione: v1.3\
Sistema: AIOS\
Tipo: Kernel Manifest\
Anno: 2026

------------------------------------------------------------------------

# 1 --- SCOPO DEL DOCUMENTO

Il Kernel Manifest definisce l'elenco ufficiale dei documenti che
compongono il **Kernel documentale del sistema AIOS**.

Il Kernel rappresenta l'insieme dei documenti fondamentali che
definiscono l'architettura operativa del metasistema.

Il Kernel permette al Runtime di:

-   identificare i documenti fondamentali del sistema
-   verificare la presenza del Kernel
-   attivare i protocolli corretti durante le sessioni
-   garantire coerenza architetturale del metasistema

------------------------------------------------------------------------

# 2 --- DEFINIZIONE DEL KERNEL

Il **Kernel Documentale AIOS** è l'insieme dei documenti fondamentali
che definiscono il funzionamento del sistema.

Le modifiche a uno dei documenti del Kernel equivalgono a modifiche
dell'architettura del sistema AIOS.

Il Kernel non rappresenta il lavoro operativo dei progetti ma la
**struttura metodologica e protocollare del metasistema**.

------------------------------------------------------------------------

# 3 --- DOCUMENTI DEL KERNEL

Il Kernel documentale AIOS è composto dai seguenti documenti.

## 00_SYSTEM

-   00_AIOS_KERNEL_MANIFEST\
-   00_AIOS_RUNTIME_OPERATING_LAYER\
-   00_AIOS_BOOT_SEQUENCE\
-   00_AIOS_META_OBSERVATION\
-   00_AIOS_SYSTEM_MAP\
-   00_AIOS_ROOT_STRUCTURE

## 01_METHOD

-   01_AIOS_METHOD\
-   01_AIOS_SESSION_PROTOCOL\
-   01_AIOS_STATE_PROTOCOL

## 02_PROTOCOLS

-   02_AIOS_PROJECT_LAUNCH_PROTOCOL\
-   02_AIOS_STP_PROTOCOL\
-   02_AIOS_CQD_PROTOCOL\
-   02_AIOS_SISTEMA_FONTI\
-   02_AIOS_CHAT_ANCHOR_PROTOCOL
-   02_AIOS_Codex_Safe_Document_Apply

Il contratto Codex è una fonte metodologica del Kernel. Il suo
caricamento non certifica i permessi dell'IDE né la disponibilità
di uno scope Apply reale. L'adattatore AGENTS.md rinvia a queste fonti
e non sostituisce il Kernel.

------------------------------------------------------------------------

# 4 --- PRINCIPIO DI ATTIVAZIONE

Quando una sessione AIOS viene avviata, il sistema verifica la presenza
logica del Kernel Manifest.

Il Kernel rappresenta la base strutturale del sistema e permette al
Runtime di:

-   verificare la coerenza del sistema
-   individuare i protocolli disponibili
-   attivare correttamente il metodo operativo

Se uno o più documenti del Kernel non sono disponibili nella sessione,
AIOS può richiederne il caricamento per garantire la coerenza
architetturale del sistema.

------------------------------------------------------------------------

## Stato corrente Codex — acquisizione P3 del 7 ottobre 2026

P1 è CLOSED/PASS nel perimetro della ripetibilità documentale AIOS_CORE:
collaudo nativo isolato 25/25, setup P1 VERIFIED e seconda transazione utile
Runtime Operating Layer v1.4 → v1.5, con Check, approvazione specifica,
Apply, Verify separata e review. Il primo ciclo Backup/GitHub v1.2 resta acquisito.

P2 è CLOSED/PASS per generatore, handoff, collector e ZIP esterni: 21/21 test
nativi isolati e review delle prove. Questi strumenti non sono installati nella
repository e il loro PASS non estende lo scope del motore documentale.

P3 ha acquisito 30 documenti AIOS più AGENTS.md e README.md, 52 pathname Git e
le preimage dei 24 pendenti. La review delle prove è PASS; l’allineamento dei
contenuti e la classificazione commit-ready restano in corso. HEAD e indice
sono ancora quelli acquisiti; il loro mantenimento non è adozione baseline.

Le note R1/R2.1 e le ricevute precedenti sono storia, non il gate corrente.
Il percorso ordinario concordato è la chat GUI Codex in VS Code. Per ogni azione
servono permessi dichiarati osservati, fonti e snapshot aggiornati e approvazione
puntuale del comando esatto quando richiesta; TOML e vecchi output CLI non
certificano l’enforcement attuale. Nessuna modifica di policy o LanguageMode.

Il bridge P1 ammette un solo documento esistente e tracciato, autorizzato dalla
policy nelle directory AIOS previste, con modify_ranges e nuovi binding per
ciascuna transazione. Non abilita creazione generica, target untracked,
AGENTS/config/runtime o altre root. L’allineamento di questi elementi richiede
un percorso separato revisionato e autorizzato; lo staging da solo non basta.

P4 resta da verificare con un nuovo Check sul nuovo HEAD dopo un commit reale,
manuale e selettivo. LOGOS richiede profilo e rollout propri. Regia rinviata.
baseline_adopted=false; production_ready=false. Nessuna autorizzazione
per nuove Apply, commit/push, rollback o cleanup deriva da questo stato.

Il piano in 05_WORKSPACE resta un punto d’ingresso del nodo, non una nuova
dipendenza obbligatoria del Kernel.

# VERSION HISTORY

v1.3 — 2026-10-07 — Stato corrente Codex P1/P2 e acquisizione P3;
elenco Kernel invariato, note R1 conservate come storia.

v1.2 — 2026-10-02 — Introduzione del contratto Codex nel Kernel,
con distinzione tra fonte metodologica e abilitazione dell'esecutore.
Revisione di provisioning; attiva dopo Verify PASS del setup.

v1.1 --- Unificazione della definizione del Kernel documentale AIOS.\
Rimozione della distinzione tra documenti runtime e non runtime.\
Allineamento del Kernel con Method AIOS e Universal Instructions.

v1.0 --- Introduzione Kernel Manifest.

Nota di provisioning R1 (2026-10-03): i riferimenti al candidato e ai gate
aperti riportano lo snapshot precedente. Lo stato locale richiede la ricevuta
Verify PASS; la transizione e definita nella sezione 12 del contratto Codex.
Production_ready=false; R2.1 reale sospeso dopo il setup; commit/push separati.
