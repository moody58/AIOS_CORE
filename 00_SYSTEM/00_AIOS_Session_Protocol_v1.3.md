Documento: 00_AIOS_Session_Protocol

Versione: v1.1

Sistema: AIOS

Tipo: Protocollo operativo di sessione

Anno: 2026

AIOS --- SESSION PROTOCOL

1\. SCOPO DEL DOCUMENTO

Il Session Protocol definisce il ciclo operativo delle sessioni

di lavoro all'interno del sistema AIOS.

Il protocollo stabilisce:

\- come avviare una sessione

\- come identificare il progetto attivo

\- come gestire lo stato del progetto

\- come consolidare le decisioni

2\. CICLO OPERATIVO DELLA SESSIONE

Ogni sessione AIOS segue un ciclo operativo standard.

1

Apertura sessione

2

Identificazione contesto

3

Identificazione progetto

4

Recupero stato progetto

5

Sviluppo operativo

6

Consolidamento decisioni

7

Aggiornamento Regia

3\. APERTURA SESSIONE

Una sessione può essere aperta utilizzando i trigger operativi

del sistema AIOS.

Esempi:

#start

#session

#quick

#deep

Questi trigger permettono di indicare il tipo di lavoro

che verrà svolto nella sessione.

4\. IDENTIFICAZIONE DEL PROGETTO

Quando una sessione riguarda un progetto specifico,

il progetto deve essere esplicitamente dichiarato.

Il progetto può essere identificato tramite:

linguaggio naturale

oppure

@@NOME_PROGETTO

5\. RECUPERO DELLO STATO

Poiché le chat non possono interrogare altre conversazioni,

lo stato del progetto può essere ricostruito tramite:

\- memoria conversazionale

\- blocco STATE dichiarato

\- Regia del progetto

La Regia rappresenta la fonte direzionale principale

dello stato del progetto.

6\. GERARCHIA DELLE FONTI DI STATO

Per garantire coerenza del sistema AIOS

si applica la seguente gerarchia:

REGIA \> STATE \> REGISTRY

REGIA

fonte direzionale principale

STATE

snapshot operativo della sessione

REGISTRY

vista sintetica del sistema

In caso di divergenza tra queste fonti:

AIOS segnala il disallineamento

e richiede chiarimento prima di aggiornare il sistema.

7\. SVILUPPO OPERATIVO

ANCHOR CONVERSAZIONALI

Durante lo sviluppo operativo AIOS può utilizzare Anchor semantici per
marcare i nodi principali della conversazione.

Gli Anchor consentono di identificare:

INSIGHT --- osservazioni o intuizioni emerse nella discussione.

DECISION --- scelte operative o strategiche.

STRUCTURE --- definizione di modelli o strutture.

DOC --- contenuti destinati alla documentazione.

TASK --- azioni operative derivate dalla conversazione.

Il comportamento degli Anchor è definito nel documento:

02_AIOS_Chat_Anchor_Protocol.

Durante la sessione il lavoro può includere:

\- analisi

\- sviluppo contenuti

\- progettazione

\- decisioni operative

AIOS supporta due modalità operative:

Esplorazione

brainstorming e sviluppo idee

Consolidamento

decisioni e generazione documenti

8\. CONSOLIDAMENTO DECISIONI

Durante il consolidamento AIOS può utilizzare gli Anchor per individuare
rapidamente le decisioni e i nodi strutturali emersi nella sessione.

Questo permette di trasformare la conversazione in documentazione
strutturata e azioni operative.

Quando emergono decisioni rilevanti

AIOS suggerisce il consolidamento.

Il consolidamento può includere:

\- aggiornamento della Regia

\- generazione documenti

\- registrazione nel Radar

\- aggiornamento dello stato progetto

9\. AGGIORNAMENTO DELLA REGIA

La Regia rappresenta la fotografia direzionale del progetto.

Al termine della sessione

eventuali modifiche operative possono richiedere

l'aggiornamento della Regia.

L'aggiornamento deve essere confermato

prima di essere consolidato nel sistema.

10\. CHIUSURA SESSIONE

La sessione termina quando:

\- il nodo operativo è stato completato

\- le decisioni sono state consolidate

\- lo stato del progetto è stato aggiornato

VERSION HISTORY

Introduzione Anchor Register nello snapshot di stato.

Integrazione Anchor Conversazionali nel ciclo operativo delle sessioni.

v1.3

v1.1

Introduzione gerarchia fonti di stato.

Allineamento con Metodo AIOS v1.5.

v1.0

Versione iniziale del Session Protocol.

# 11. SNAPSHOT DI STATO

ANCHOR REGISTER

Prima dello snapshot di stato AIOS può generare un Anchor Register.

L'Anchor Register è un elenco sintetico degli Anchor emersi durante la
sessione.

Questo registro consente di recuperare rapidamente i nodi principali
della conversazione.

Durante sessioni lunghe o complesse AIOS può generare uno snapshot
sintetico dello stato tramite il trigger #state.

Lo snapshot include:

\- progetto attivo

\- macroarea

\- nodo operativo

\- documenti coinvolti

\- decisioni recenti

\- incidenti aperti

# 12. CHECKPOINT OPERATIVO

Quando una discussione cambia nodo operativo oppure diventa
eccessivamente estesa, AIOS può suggerire un checkpoint.

Sequenza suggerita:

#state --- snapshot dello stato corrente

#session --- apertura nuova sessione operativa

Questo meccanismo evita la deriva conversazionale e mantiene le sessioni
focalizzate.
