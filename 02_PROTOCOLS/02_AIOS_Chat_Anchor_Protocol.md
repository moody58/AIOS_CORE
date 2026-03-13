# 02_AIOS_Chat_Anchor_Protocol

Versione: v1.1

Sistema: AIOS

Anno: 2026

1 --- Scopo del protocollo

Il Chat Anchor Protocol definisce il sistema di marcatura semantica
delle conversazioni operative

all'interno del metasistema AIOS.

Gli anchor permettono di:

\- identificare nodi rilevanti della conversazione

\- rendere recuperabili decisioni e contenuti documentali

\- collegare conversazioni tra progetti

\- trasformare le chat in conoscenza strutturata

2 --- Principi del sistema Anchor

Il sistema Anchor segue quattro principi fondamentali:

1\. L'anchor vive nello stesso messaggio del contenuto.

2\. Gli anchor devono essere semanticamente chiari.

3\. Gli anchor devono essere ricercabili tramite ricerca testuale.

4\. Il sistema è assistito dalla chat e non richiede memorizzazione
manuale da parte dell'utente.

3 --- Sintassi Anchor

Sintassi generale:

#TIPO.contesto.nodo

Esempi:

#INSIGHT.chat.limit

#DECISION.aios.anchor.system

#STRUCTURE.anchor.format

#DOC.aios.anchor.protocol

#TASK.aios.update.method

4 --- Tipologie Anchor

Il sistema supporta cinque categorie:

#INSIGHT

intuizioni o osservazioni emerse nella discussione

#DECISION

scelte operative o strategiche consolidate

#STRUCTURE

definizione di modelli, architetture o strutture

#DOC

contenuti destinati alla documentazione

#TASK

azioni operative derivanti dalla conversazione

5 --- Regole operative

Regole principali:

\- L'anchor deve essere la prima riga del messaggio.

\- L'anchor identifica il nodo semantico della conversazione.

\- Se il concetto cambia nasce un nuovo anchor.

\- Gli anchor possono essere ricercati tramite ricerca testuale nella
chat.

6 --- Integrazione con Session Protocol

Durante le sessioni operative gli anchor marcano i nodi importanti della
conversazione.

Flusso tipico:

INSIGHT → DECISION → STRUCTURE → DOC → TASK

7 --- Integrazione con State e Switch

Alla chiusura di una sessione è possibile generare:

ANCHOR REGISTER

elenco degli anchor emersi nella sessione

#state

snapshot dello stato con gli anchor principali

Questo permette di recuperare rapidamente i nodi della discussione.

8 --- Riferimenti incrociati tra chat

Gli anchor possono essere richiamati tra conversazioni tramite la
sintassi:

@@TIPO.contesto.nodo

Esempio:

@@DECISION.aios.anchor.system

Questo indica che il nodo è stato definito in un'altra conversazione.

9 --- Esempio operativo di sessione

#INSIGHT.chat.limit

Le conversazioni lunghe rendono difficile recuperare contenuti
documentali.

#DECISION.aios.anchor.system

Introduzione del sistema anchor per marcare nodi conversazionali.

#STRUCTURE.anchor.format

Struttura anchor: #TIPO.contesto.nodo

#DOC.aios.anchor.protocol

Documento del protocollo anchor.

#TASK.aios.update.method

Aggiornare il documento Method con il nuovo protocollo.

10 --- Anchor Index

#INSIGHT.chat.limit

limiti delle conversazioni lunghe

#DECISION.aios.anchor.system

introduzione sistema anchor

#STRUCTURE.anchor.format

sintassi anchor

#DOC.aios.anchor.protocol

documento protocollo anchor

11 --- Mappa concettuale

Conversazione

↓

INSIGHT

↓

DECISION

↓

STRUCTURE

↓

DOC

↓

TASK

↓

ANCHOR REGISTER

↓

STATE

↓

NUOVA SESSIONE

12 --- Priorità degli Anchor

Ordine di priorità:

DECISION

STRUCTURE

DOC

INSIGHT

TASK

Questa gerarchia aiuta a identificare rapidamente i nodi più importanti
della conversazione.

13 --- Principio di assistenza semi‑intelligente

Il sistema Anchor è progettato per essere assistito dalla chat.

La chat può suggerire anchor quando identifica:

\- decisioni esplicite

\- strutture emergenti

\- contenuti documentali

\- azioni operative

L'utente può confermare, modificare o ignorare il suggerimento.

14 --- Consolidamento decisioni

Quando emergono anchor di tipo:

#DECISION

#STRUCTURE

#DOC

AIOS verifica se è necessario consolidare il nodo emerso nella sessione.

Il consolidamento può comportare:

• aggiornamento della Regia del progetto

• generazione o aggiornamento di un documento del sistema

• aggiornamento della Dashboard o del Project Index

• registrazione di un TASK operativo

Questa verifica avviene durante la fase di consolidamento della sessione

definita nel Session Protocol.

Storico revisioni

v1.1 --- Introduzione della regola di consolidamento decisioni collegata
agli anchor.

v1.0 --- Creazione iniziale del protocollo Anchor.
