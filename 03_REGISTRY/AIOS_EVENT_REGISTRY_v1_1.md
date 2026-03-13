AIOS --- EVENT REGISTRY Versione: v1.1

Scopo Il registro eventi AIOS raccoglie gli eventi strutturali
provenienti dai progetti del metasistema. Gli eventi sono generati dai
progetti tramite blocchi SYNC AIOS e registrati dalla Control Room.

Principio architetturale I progetti NON leggono AIOS. AIOS osserva e
registra gli eventi generati dai progetti.

Pipeline eventi

Progetto ↓ SYNC AIOS (blocco evento) ↓ Control Room AIOS ↓ Registrazione
evento ↓ AIOS_EVENT_REGISTRY

Regola operativa Quando la Control Room riceve un blocco SYNC AIOS
durante una sessione, deve registrare un evento nel presente documento.

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
