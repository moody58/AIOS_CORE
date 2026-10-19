AIOS --- EVENT REGISTRY
Versione: v1.3

Scopo Il registro eventi AIOS raccoglie gli eventi strutturali
provenienti dai progetti del metasistema. I progetti segnalano eventi
tramite blocchi SYNC AIOS; la Control Room valuta e propone
la registrazione, che avviene solo dopo consenso e gate pertinenti.

Principio architetturale I progetti NON leggono AIOS. AIOS riceve e
riconcilia gli eventi segnalati dai progetti; la registrazione non è
automatica.

Pipeline eventi

Progetto ↓ SYNC AIOS (blocco evento) ↓ Ricezione Control Room AIOS
↓ verifica provenienza e riconciliazione con eventi esistenti
↓ proposta di registrazione ↓ consenso e gate pertinenti
↓ eventuale registrazione autorizzata ↓ AIOS_EVENT_REGISTRY

Regola operativa Quando la Control Room riceve un blocco SYNC AIOS,
verifica provenienza ed evidenze, confronta gli eventi esistenti per
evitare duplicazioni e prepara una proposta. La ricezione non autorizza
scritture: un evento è registrato solo con delta, preimage locale completa,
consenso specifico e gate tecnici pertinenti. In assenza dei requisiti,
la registrazione resta sospesa, senza assegnare ID persistenti.

Formato evento

EVENTO Data: Progetto: Tipo evento: Area coinvolta: Documento coinvolto:
Impatto:

Sintesi: Descrizione breve della modifica.

Azione richiesta: Eventuale azione richiesta alla Control Room.

Regole di registrazione

• registrare solo eventi strutturali • evitare duplicazioni • mantenere
sintesi brevi • non inserire conversazioni • un evento per decisione
strutturale

Tipologie eventi

Aggiornamento protocollo Aggiornamento architettura Aggiornamento
documentazione Decisione strategica Nuovo progetto Chiusura progetto

Esempio

EVENTO Data: 2026-03-13 Progetto: ADEXIMA Tipo evento: aggiornamento
runtime Area coinvolta: Protocollo Operativo Documento coinvolto:
ADEXIMA_PROJECT_INSTRUCTIONS_v2.2

Sintesi: Introduzione State Guard e blocco SYNC strutturato.

Impatto: Modifica comportamento runtime progetto.

Azione richiesta: Aggiornamento Registry Control Room.

---

EVENTI — REVISIONE DI PROVISIONING, ATTIVA DOPO VERIFY PASS R1

EVENTO
Data: 2026-10-02
Progetto: AIOS_CORE
Tipo evento: Decisione strategica
Area coinvolta: governance ed esecuzione documentale locale; nodo AIOS CODEX
Documento coinvolto: 02_PROTOCOLS/02_AIOS_Codex_Safe_Document_Apply.md
Riferimento evento: AIOS_CORE_CODEX_DOCUMENT_EXECUTION_20261002

Sintesi: Introduzione dell'esecuzione documentale tramite handoff,
Check, approvazione puntuale, Apply, Verify e recovery. Nove file runtime
installati; pilota reale concluso con Apply e Verify PASS, indice invariato
nelle evidenze native. La CLI mostra Read Only (Ask for approval).

Impatto: production_ready=false; il bridge resta limitato al pilota gia
creato. Contratto, AGENTS, launcher e consolidamento sono candidati,
non installati. Il percorso GUI resta osservato come workspace-write.
Nessun nuovo progetto o rollout su altre root.

Azione richiesta: Control Room deve consolidare le fonti e revisionare
profilo, guardie e baseline; collaudare i nuovi comportamenti e approvare
il provisioning separato. Commit e push restano separatamente autorizzati.

Riferimento evidenza: pilota a96e54587b0b44c1999009e7b1a3fb6e;
journal finale SHA-256
ccf31e993d15129214094cfff2fa55e117a01a0028b5ee9b999998744eba549e;
CLI sessione 01a0fe84-53b8-7761-9f07-0ff7741ccc78.

---

VERSION HISTORY

v1.3 — 2026-10-19 — Nodo CP-AIOS-EVENT-REGISTRY-20261019-01:
allineamento della gestione SYNC a ricezione, riconciliazione,
proposta e registrazione soltanto dopo consenso e gate pertinenti.
Versione riportata in seconda riga. Eventi e storico precedenti
conservati; nessuna registrazione retroattiva.

v1.2 — 2026-10-02 — Candidato: una voce strutturale per il percorso
documentale Codex AIOS_CORE; evidenze acquisite e setup ancora aperto.
Contenuto v1.1 conservato salvo header; filename stabile proposto:
AIOS_EVENT_REGISTRY_v1_1.md. Installazione da approvare separatamente.

Nota di provisioning R1 (2026-10-03): i riferimenti al candidato e ai gate
aperti riportano lo snapshot precedente. Lo stato locale richiede la ricevuta
Verify PASS; la transizione e definita nella sezione 12 del contratto Codex.
Production_ready=false; R2.1 reale sospeso dopo il setup; commit/push separati.
