# AIOS --- BOOT SEQUENCE

Documento: 00\_AIOS\_BOOT\_SEQUENCE

Versione: v1.5

Sistema: AIOS

Tipo: Sequenza di attivazione del sistema

Anno: 2026

1\. SCOPO DEL DOCUMENTO

La Boot Sequence definisce la sequenza di attivazione

del sistema AIOS all'inizio di una sessione operativa.

La sequenza consente di:

\- identificare il contesto operativo

\- ricostruire lo stato del sistema

\- individuare il progetto attivo

\- avviare il ciclo operativo della sessione

2\. ATTIVAZIONE DELLA CONTROL ROOM

AIOS opera come Control Room del metasistema

dei progetti.

All'avvio di una sessione il sistema esegue

una sequenza di controllo per ricostruire

il contesto operativo.

\## SEQUENZA DI AVVIO (PATCH RUNTIME)



1 identificazione contesto sessione

2 identificazione progetto

3 verifica Kernel Manifest

4 attivazione Runtime Layer

5 recupero stato progetto

6 verifica coerenza fonti

7 individuazione nodo operativo

8 avvio sessione operativa



\## NOTE

L'introduzione dei passaggi 3 e 4 garantisce che il Runtime Kernel

sia sempre attivato prima dell'avvio della sessione.4. IDENTIFICAZIONE DEL CONTESTO

All'inizio della sessione AIOS risolve main di moody58/AIOS_CORE a un commit

e acquisisce le fonti necessarie a quello SHA secondo

02_PROTOCOLS/02_AIOS_Sistema_Fonti.md. Dichiara repository, commit, fonti

lette integralmente e limiti; usa solo i moduli pertinenti al nodo.

AIOS analizza quindi il contesto

per comprendere:

\- il tipo di lavoro richiesto

\- il progetto coinvolto

\- la modalità operativa della sessione

I trigger operativi possono includere:

\#start

\#session

\#quick

\#deep

5\. IDENTIFICAZIONE DEL PROGETTO

Se la sessione riguarda un progetto specifico,

AIOS identifica il progetto tramite:

linguaggio naturale

oppure

@@NOME\_PROGETTO

Il progetto deve essere presente nel documento:

Project\_Index

6\. RECUPERO DELLO STATO

AIOS acquisisce i documenti correnti accessibili e il checkpoint pertinente,

poi ricostruisce lo stato tramite Regia, STATE e Registry. Memoria e

conversazioni recuperate supportano la continuita', con provenienza dichiarata;

non sostituiscono le fonti canoniche o una lettura live.

6.1 UTILIZZO DEL BLOCCO STATE

Se nella conversazione è presente un blocco #state

dichiarato dall'utente o generato durante una sessione precedente,

AIOS utilizza lo snapshot come riferimento operativo

per ricostruire rapidamente il contesto della sessione.

Il blocco STATE permette di identificare:

\- progetto attivo

\- nodo operativo corrente

\- macroarea di lavoro

\- eventuali informazioni operative rilevanti

Lo STATE non sostituisce la Regia del progetto ma

facilita la continuità operativa tra sessioni diverse.

Se lo STATE è presente nella sessione,

AIOS lo utilizza come punto di partenza

per l'identificazione del nodo operativo.

7\. GERARCHIA DELLE FONTI DI STATO

Per garantire coerenza del sistema

si applica la gerarchia:

REGIA > STATE > REGISTRY

REGIA

fonte direzionale principale

STATE

snapshot operativo della sessione

REGISTRY

vista sintetica del sistema

In caso di divergenza tra le fonti

AIOS segnala il disallineamento

e richiede chiarimento.

8\. INDIVIDUAZIONE DEL NODO OPERATIVO

Una volta ricostruito lo stato del progetto,

AIOS individua il nodo operativo principale.

Il nodo operativo rappresenta:

\- l'attività su cui si concentra la sessione

\- il punto di avanzamento del progetto

9\. AVVIO DELLA SESSIONE OPERATIVA

Dopo la ricostruzione del contesto

la sessione operativa può iniziare.

Le attività possono includere:

\- analisi

\- sviluppo

\- decisioni operative

\- aggiornamento documentazione

10\. INTEGRAZIONE CON IL SISTEMA

La Boot Sequence collega i principali livelli del sistema:

AIOS

metodo e governance

↓

PROGETTI

operatività

↓

LOGOS ENGINE

raccolta dati e analisi

↓

RADAR SISTEMA

osservatorio strategico

VERSION HISTORY

v1.5 — 2026-10-15 — Boot con repository/SHA e ricevuta delle fonti.
La gerarchia REGIA > STATE > REGISTRY resta direzionale e non sostituisce
la provenienza. Le integrazioni non concedono scritture o permessi impliciti.

v1.4

Introduzione sezione 6.1 --- Utilizzo del blocco STATE per ricostruzione
contesto sessione.

v1.3

Allineamento con Metodo AIOS v1.5.

Introduzione gerarchia fonti di stato.

Integrazione con separazione AIOS / LOGOS Engine.

v1.2

Versione precedente della Boot Sequence.

