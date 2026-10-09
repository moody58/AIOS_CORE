# Documento: 02\_AIOS\_Protocol\_Index

Versione: v1.4 Sistema: AIOS Tipo: Indice protocolli del sistema Anno:
2026

\---

# 1 --- SCOPO DEL DOCUMENTO

Questo documento definisce l'indice ufficiale dei protocolli del sistema
AIOS.

Il suo scopo è:

• mantenere la mappa della manualistica del sistema  
• identificare i protocolli disponibili  
• chiarire il ruolo di ciascun protocollo  
• garantire coerenza metodologica nel tempo

Questo documento non contiene i protocolli stessi ma ne rappresenta la
struttura di riferimento.

\---

# 2 --- ARCHITETTURA DEI PROTOCOLLI AIOS

Il metodo AIOS si basa su protocolli operativi che supportano decisioni,
avvio progetti, controllo qualità documenti e verifica delle fonti.

Architettura logica:

Idea → Radar → Project Launch → STP → Strutturazione → Documentazione →
CQD → Consolidamento

\---

# 3 --- ELENCO PROTOCOLLI DEL SISTEMA

## Project Launch Protocol

Funzione: definire la sequenza ufficiale di avvio dei nuovi progetti.

Documento: 02\_AIOS\_Project\_Launch\_Protocol

## STP --- Stress Test Protocol

Funzione: analizzare criticamente decisioni strutturali prima del
consolidamento.

Documento: 02\_AIOS\_STP\_Protocol

## CQD --- Controllo Qualità Documenti

Funzione: verificare integrità e coerenza dei documenti prima
dell'esportazione.

Documento: 02\_AIOS\_CQD\_Protocol

## Sistema Fonti

Funzione: supportare le decisioni con verifiche esterne quando
necessario.

Documento: 02\_AIOS\_Sistema\_Fonti

## Chat Anchor Protocol

Funzione: definire il sistema di marcatura semantica delle
conversazioni.

Documento: 02\_AIOS\_Chat\_Anchor\_Protocol

## Incident Management

Funzione: gestione degli incidenti operativi o delle anomalie rilevate
nelle sessioni.

Documento: 02\_AIOS\_Incident\_Management

\---

AIOS\_Audit\_Protocol

protocollo universale per audit dei sistemi del metasistema

## Codex Safe Document Apply

Funzione: disciplinare il passaggio da un change-set documentale
approvato alla sua esecuzione locale, con Check, Apply autorizzato,
Verify e recovery.

Documento: `02_PROTOCOLS/02_AIOS_Codex_Safe_Document_Apply.md`

Lo scope reale dipende dal motore installato, dalla policy e dai binding
della singola azione. P1 è acquisito nel perimetro documentale AIOS_CORE;
P2 riguarda generatore, handoff e raccolta esterni. P3 ha chiuso i cicli
Kernel Manifest, Backup/GitHub, Runtime Operating Layer v1.6 e Instructions
v3.2 nei rispettivi ambiti. L'Index è in allineamento; provisioning dei file
non tracciati, commit selettivi e portabilità restano aperti.

Il bridge attuale consente un solo documento esistente e tracciato,
modify_ranges, nelle directory AIOS autorizzate. Non abilita creazione
generica, target untracked, AGENTS/config/runtime o altre repository.

Le fasi restano preparazione e Check, review semantica e consenso specifico,
Apply, controlli post Apply, Verify indipendente e review conclusiva.
Il ciclo Instructions ha completato Apply, gate locali, Verify in processo
distinto e raccolta nello stesso avvio; la review esterna conclusiva è PASS.
Questa qualifica riguarda quella singola azione AIOS_CORE con task pinned,
un Apply e un Verify: non abilita altri target o repository. Il raggruppamento
mantiene consenso sul diff concreto, journal, controllo della postimage e
preservazione del lavoro locale. Il Check del documento successivo deve
riflettere lo snapshot aggiornato; nessun riuso di descriptor stale.
Se Apply riesce e Verify fallisce, conservare la scrittura e le prove,
fermarsi e non ripetere Apply o avviare rollback automatici.

I contenuti locali non committati sono la fonte per la preimage.
Prove mirate per le review ordinarie; audit globali nei checkpoint necessari.
Le note R1 e il CQD precedente sono storici. Le ricevute verificate e il
Runtime Operating Layer distinguono stato acquisito e limiti correnti.
Candidata non adottata; production_ready=false. Il caricamento del protocollo
non autorizza nuove Apply, commit/push, rollback o adozione baseline.

# 4 --- RELAZIONI TRA I PROTOCOLLI

I protocolli AIOS operano come parte di un ciclo decisionale:

Idea → Radar → Project Launch → Strutturazione progetto → STP →
Documentazione → CQD → Consolidamento

Il Sistema Fonti può intervenire per supportare STP o validare decisioni
strategiche.

\---

# 5 --- REGOLE DI EVOLUZIONE DEI PROTOCOLLI

Nuovi protocolli possono essere introdotti quando:

• emerge un bisogno metodologico stabile  
• sono riutilizzabili tra più progetti  
• migliorano la qualità decisionale o documentale

Ogni nuovo protocollo deve:

• essere documentato separatamente  
• essere inserito in questo indice  
• rispettare le regole di versionamento del sistema

\---

# VERSION HISTORY

v1.4 — 2026-10-09 — Quattro cicli Codex P3 chiusi e qualifica del
Run combinato Instructions nel suo solo ambito; gate e lavoro locale preservati.
Protocolli, report CQD storico, nota R1 e cronologia precedente conservati.

v1.3 — 2026-10-02 — Inserimento del contratto Codex e distinzione
tra protocollo, pilota concluso e abilitazione operativa.
Revisione di provisioning; attiva dopo Verify PASS del setup.

# CQD REPORT

Timestamp: 2026-03-13T13:18:58.605274+00:00

Metriche PRE Paragraphs: 5 Characters: 722 Words: 101 Hash:
c4a9977aa97e16f92d399cc38df8a8d35f4ebf017cbe0db5eda241535116544a

Metriche POST Paragraphs: 41 Characters: 2607 Words: 302 Hash:
6229343419a0f607571da9a3c3471fb1d9be11488d451c36c5e75d70f9f6868e

Controlli CQD ✓ confronto paragrafi ✓ confronto metriche caratteri ✓
verifica hash documento ✓ struttura sezioni verificata ✓ nessun
troncamento rilevato


Nota di provisioning R1 (2026-10-03): i riferimenti al candidato e ai gate
aperti riportano lo snapshot precedente. Lo stato locale richiede la ricevuta
Verify PASS; la transizione e definita nella sezione 12 del contratto Codex.
Production_ready=false; R2.1 reale sospeso dopo il setup; commit/push separati.
