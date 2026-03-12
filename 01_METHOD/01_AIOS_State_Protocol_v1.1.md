Documento: 01_AIOS_State_Protocol

Versione: v1.1

Sistema: AIOS

Tipo: Protocollo gestione stato progetto

Anno: 2026

AIOS --- STATE PROTOCOL

1\. SCOPO DEL DOCUMENTO

Il State Protocol definisce il metodo con cui il sistema AIOS

ricostruisce e gestisce lo stato dei progetti durante le sessioni
operative.

Poiché le conversazioni non possono interrogare direttamente

altre chat o documenti esterni, il protocollo STATE permette

di ricostruire rapidamente il contesto operativo del progetto.

2\. COSA RAPPRESENTA LO STATE

Lo STATE rappresenta uno snapshot operativo del progetto

all'interno della sessione corrente.

Serve a:

\- identificare il progetto attivo

\- identificare il nodo operativo

\- ricostruire il contesto della sessione

\- facilitare la continuità operativa

3\. STRUTTURA DEL BLOCCO STATE

Il blocco STATE può essere dichiarato nel seguente formato:

#state

STATO PROGETTO

Progetto:

Nome progetto

Classificazione:

Livello progetto

Nodo operativo:

attività in corso

Macroarea:

area principale di lavoro

Note operative:

eventuali informazioni utili

4\. FONTI DI RICOSTRUZIONE DELLO STATO

AIOS può ricostruire lo stato di un progetto tramite tre fonti:

\- memoria conversazionale

\- blocco STATE dichiarato nella sessione

\- Regia del progetto

Queste fonti consentono di ricostruire il contesto

anche quando le chat non possono accedere direttamente

ai documenti del sistema.

5\. GERARCHIA DELLE FONTI DI STATO

Per garantire coerenza nel sistema AIOS

si applica la seguente gerarchia:

REGIA \> STATE \> REGISTRY

REGIA

fonte direzionale principale del progetto

STATE

snapshot operativo della sessione

REGISTRY

vista sintetica dello stato del sistema

6\. GESTIONE DELLE DIVERGENZE

In alcuni casi lo STATE dichiarato nella sessione

può non coincidere con la Regia del progetto.

Quando viene rilevata una divergenza:

AIOS segnala il disallineamento

e richiede chiarimento prima di aggiornare il sistema.

La Regia non viene modificata automaticamente.

7\. RELAZIONE TRA STATE E SESSIONE

Lo STATE è uno strumento operativo

che permette di mantenere continuità tra sessioni diverse.

Il suo scopo non è sostituire la Regia

ma facilitare il lavoro operativo durante la sessione.

8\. AGGIORNAMENTO DELLO STATE

Lo STATE può essere aggiornato durante la sessione

quando cambia il nodo operativo

o quando emergono nuove informazioni rilevanti.

L'aggiornamento dello STATE non modifica

automaticamente la Regia del progetto.

9\. RELAZIONE CON IL REGISTRY

Il Registry rappresenta la vista sintetica del sistema.

Include documenti come:

\- Dashboard

\- Project_Index

\- Project_Status

\- Radar_Sistema

Lo STATE non aggiorna direttamente il Registry,

ma può essere utilizzato per verificare

la coerenza dello stato del progetto.

VERSION HISTORY

v1.1

Allineamento con Metodo AIOS v1.5.

Introduzione gerarchia fonti di stato.

v1.0

Versione iniziale del protocollo STATE.
