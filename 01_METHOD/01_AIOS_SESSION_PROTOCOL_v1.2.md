# Documento: 00_AIOS_Session_Protocol

Versione: v1.2 Sistema: AIOS Tipo: Protocollo operativo di sessione
Anno: 2026

------------------------------------------------------------------------

# 1 --- SCOPO DEL DOCUMENTO

Il Session Protocol definisce il ciclo operativo delle sessioni di
lavoro all'interno del sistema AIOS.

Il protocollo stabilisce:

-   come avviare una sessione
-   come identificare il progetto attivo
-   come gestire lo stato del progetto
-   come consolidare le decisioni

------------------------------------------------------------------------

# 2 --- CICLO OPERATIVO DELLA SESSIONE

Ogni sessione AIOS segue un ciclo operativo standard.

1 Apertura sessione\
2 Identificazione contesto\
3 Identificazione progetto\
4 Recupero stato progetto\
5 Sviluppo operativo\
6 Consolidamento decisioni\
7 Aggiornamento Regia

------------------------------------------------------------------------

# 3 --- APERTURA SESSIONE

Una sessione può essere aperta utilizzando i trigger operativi del
sistema AIOS.

Esempi:

#start\
#session\
#quick\
#deep

Questi trigger permettono di indicare il tipo di lavoro che verrà svolto
nella sessione.

------------------------------------------------------------------------

# 4 --- IDENTIFICAZIONE DEL PROGETTO

Quando una sessione riguarda un progetto specifico, il progetto deve
essere esplicitamente dichiarato.

Il progetto può essere identificato tramite:

linguaggio naturale\
oppure\
@@NOME_PROGETTO

------------------------------------------------------------------------

# 5 --- RECUPERO DELLO STATO

Poiché le chat non possono interrogare altre conversazioni, lo stato del
progetto può essere ricostruito tramite:

-   memoria conversazionale
-   blocco STATE dichiarato
-   Regia del progetto

La Regia rappresenta la fonte direzionale principale dello stato del
progetto.

------------------------------------------------------------------------

# 6 --- GERARCHIA DELLE FONTI DI STATO

Per garantire coerenza del sistema AIOS si applica la seguente
gerarchia:

REGIA \> STATE \> REGISTRY

REGIA\
fonte direzionale principale

STATE\
snapshot operativo della sessione

REGISTRY\
vista sintetica del sistema

------------------------------------------------------------------------

# 7 --- SVILUPPO OPERATIVO

Durante lo sviluppo operativo AIOS può utilizzare Anchor semantici per
marcare i nodi principali della conversazione.

Anchor principali:

#INSIGHT\
#DECISION\
#STRUCTURE\
#DOC\
#TASK

Pipeline:

INSIGHT → DECISION → STRUCTURE → DOC → TASK

------------------------------------------------------------------------

# 8 --- CONSOLIDAMENTO DECISIONI

Durante il consolidamento AIOS può utilizzare gli Anchor per individuare
rapidamente le decisioni e i nodi strutturali emersi nella sessione.

Il consolidamento può includere:

-   aggiornamento della Regia
-   generazione documenti
-   registrazione nel Radar
-   aggiornamento dello stato progetto

------------------------------------------------------------------------

# 9 --- AGGIORNAMENTO DELLA REGIA

La Regia rappresenta la fotografia direzionale del progetto.

Al termine della sessione eventuali modifiche operative possono
richiedere l'aggiornamento della Regia.

------------------------------------------------------------------------

# 10 --- CHIUSURA SESSIONE

La sessione termina quando:

-   il nodo operativo è stato completato
-   le decisioni sono state consolidate
-   lo stato del progetto è stato aggiornato

------------------------------------------------------------------------

# 11 --- SNAPSHOT DI STATO

AIOS può generare uno snapshot sintetico dello stato tramite il trigger:

#state

Lo snapshot include:

-   progetto attivo
-   macroarea
-   nodo operativo
-   documenti coinvolti
-   decisioni recenti

------------------------------------------------------------------------

# 12 --- CHECKPOINT OPERATIVO

Quando una discussione cambia nodo operativo oppure diventa
eccessivamente estesa AIOS può suggerire un checkpoint.

Sequenza suggerita:

#state\
#session

------------------------------------------------------------------------

# CQD REPORT

Timestamp: 2026-03-13T13:16:20.999952

Metriche PRE: Paragraphs: 4 Characters: 692 Words: 94 Hash:
94b2e200d44194e4a58afde3888707062eb3f4d81c661a302c651714af5552e1

Metriche POST saranno calcolate dopo generazione.

Metriche POST: Paragraphs: 69 Characters: 3402 Words: 421 Hash:
e4d83c20afcd25a0495b975b4539edb230fb6169ed4e1ca59708d92046d07680
