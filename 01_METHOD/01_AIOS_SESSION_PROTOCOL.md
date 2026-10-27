# Documento: 00_AIOS_Session_Protocol
Versione: v1.5 Sistema: AIOS Tipo: Protocollo operativo di sessione

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

Questi trigger e i loro equivalenti naturali indicano il lavoro richiesto.
L'ingresso in una nuova chat attiva il Core Boot pertinente; letture
integrali e prove già valide si riusano senza un nuovo boot organizzativo.

Control Room AIOS e Regie figlie sono discussioni, distinte dai documenti
che ne descrivono mandato e stato. La Control Room coordina il metasistema;
le Regie figlie decidono autonomamente nel proprio perimetro. Le aree
esistono quando previste; le microsessioni eseguono un nodo confermato.

Senza nodo confermato si resta nel coordinamento. Con nodo approvato,
produrre subito il seguente blocco d'apertura copiabile, compilando soltanto
dati noti e qualificando le assenze, senza richiedere un altro consenso
organizzativo per il lavoro già delegato.

BLOCCO D'APERTURA
@@PROGETTO:
Tipo di sessione:
ID nodo e mandato:
Checkpoint padre e provenienza:
Obiettivo:
Scope ed esclusioni:
Output e criteri di chiusura:
Decisioni e prove riusabili:
Repository / branch / SHA:
Fonti e checkpoint, provenienza e completezza:
Dipendenze e input mancanti:
Consensi, permessi osservati e divieti:
Primo passo:
Destinatario del recap:

Il blocco non avvia un'altra chat, non attesta letture non svolte e non
concede permessi tecnici. Identità del nodo e responsabilità restano
quelle ricevute dalla Regia.

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

Lo stato viene ricostruito dalle fonti effettivamente accessibili secondo
02_PROTOCOLS/02_AIOS_Sistema_Fonti.md, dai documenti canonici allo SHA del
boot e dal checkpoint pertinente. Memoria e conversazioni precedenti, se
recuperabili tramite capacita' disponibili, sono supporti con provenienza
dichiarata: non e' presunta ne' la loro assenza ne' la loro lettura completa.

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

Questa gerarchia è direzionale. Non sostituisce l'organizzazione
Control Room → Regie figlie → aree quando previste → microsessioni,
né la provenienza documentale definita dal Kernel e dal Sistema Fonti.

------------------------------------------------------------------------

# 7 --- SVILUPPO OPERATIVO

Prima di ogni azione operativa, decisione vincolante o incarico a tool
verificare nodo, mandato/scope, fonti/stato, permessi/consensi e gate tecnici.
Fuori nodo o scope: «DEVIAZIONE DAL NODO» motivata e STOP della sola azione.
Requisito mancante: SAFE MODE mirata dell'azione dipendente, senza falsa
deviazione. Continuare analisi e chiarimenti leciti; nessun aggiramento.

La microsessione gestisce nella stessa chat esecuzione, review, anomalie
e chiusura del nodo. Work e Codex mantengono i ruoli qualificati; i risultati
tornano alla chat responsabile. Si escala soltanto per scope o direzioni
non delegati, senza rientri ripetuti per passaggi già autorizzati.
Non aprire nuovi nodi, audit globali, anticipazioni di roadmap o refactor
non richiesti. Su errore o UNKNOWN conservare prove e parziali, senza retry,
cleanup o rollback automatici.

### Controllo di avanzamento e gestione dello stallo

Durante una microsessione, prima di intraprendere un nuovo ciclo di lavoro sul medesimo problema, confrontare il passo proposto con il mandato, i risultati già ottenuti, le prove valide e i criteri di chiusura.

Costituiscono avanzamento effettivo una nuova prova pertinente, un risultato richiesto, la risoluzione di una dipendenza o una decisione necessaria e autorizzata. La sola ripetizione di analisi, letture, verifiche o formulazioni non costituisce avanzamento.

Se due passaggi consecutivi equivalenti non producono avanzamento sullo stesso problema, a condizioni sostanzialmente immutate, attivare una verifica mirata dello stallo. La soglia è un segnale diagnostico, non un arresto automatico della microsessione.

Identificare ciò che è già dimostrato, la causa dell'assenza di progresso e l'eventuale nuova condizione necessaria. Non ripetere il passaggio senza un requisito nuovo o una variazione materiale. Continuare gli altri lavori leciti e indipendenti, senza aggirare STOP, gate tecnici o consensi.

Quando i criteri di chiusura risultano soddisfatti, applicare la sezione 10 senza introdurre ulteriori controlli, nodi o attività non richiesti. Se una dipendenza indispensabile impedisce la conclusione, produrre un checkpoint d'impedimento riutilizzabile, distinguendo la sessione dal nodo complessivo.

Il controllo resta interno e contestuale: non richiede report rituali a ogni messaggio, né implica un monitor autonomo.

Durante lo sviluppo operativo AIOS utilizza contestualmente gli Anchor
pertinenti per marcare i nodi principali della conversazione. Gli Anchor
sono semantici: non sostituiscono preimage locale completa, postimage,
range e diff, né certificano una scrittura.

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

Si tratta di proposte da verificare, non di scritture implicite.
Applicare CQD al formato effettivo e la procedura documentale qualificata
quando esiste un delta utile; Check e consenso specifico precedono Apply.
STP si attiva secondo il proprio protocollo per le scelte pertinenti,
senza riaprire decisioni concluse nel semplice incarico esecutivo.

------------------------------------------------------------------------

# 9 --- AGGIORNAMENTO DELLA REGIA

La Regia rappresenta la fotografia direzionale del progetto.

Al termine della sessione preparare un unico recap per la Regia competente:
nodo/scope, decisioni, risultati, SHA e prove, anomalie, residui e seguito.
La Regia resta leggera; non trasferire debug ordinario fuori mandato.
Distinguere PREPARATO, TRASFERITO e RECEPITO, ciascuno con la propria prova.
Non dichiarare la Regia aggiornata per la sola preparazione del recap.

Per impatti trasversali metodologici, strategici o strutturali preparare
SYNC AIOS alla Control Room secondo Sistema Fonti e Event Registry.
Ricezione e riconciliazione non autorizzano registrazioni; nessun SYNC
è richiesto per il progresso ordinario locale.

------------------------------------------------------------------------

# 10 --- CHIUSURA SESSIONE

Confrontare risultati e dipendenze con i criteri di chiusura; produrre
#DOC oppure #CHECKPOINT con evidenze, limiti, residui e prossimo passo.

Classificare la sessione PASS, BLOCCATA o FALLITA secondo il mandato.
Una sessione può consegnare un checkpoint d'impedimento riutilizzabile.
PASS della sessione non equivale a completamento del nodo complessivo:
distinguere fine tecnica, consolidamento documentale, commit/push,
pubblicazione, tab e recepimento. Il nodo si chiude PASS soltanto quando
i risultati richiesti sono verificati; altrimenti motivare BLOCCATO/FALLITO.

Nei passaggi operativi e ai gate indicare risultato osservato, evidenze,
limiti, decisione e prossimo passo. Le conversazioni ordinarie non
richiedono validazioni rituali a ogni messaggio.

------------------------------------------------------------------------

# 11 --- SNAPSHOT DI STATO

AIOS può generare uno snapshot sintetico dello stato tramite il trigger:

#state

Lo snapshot include:

-   progetto attivo e macroarea
-   nodo, mandato, scope ed esclusioni
-   repository/branch/SHA, fonti e completezza, checkpoint e provenienza
-   decisioni e Anchor, risultati e prove
-   consensi ancora validi e permessi realmente osservati
-   stato DOCUMENTATO, VERIFICATO LIVE o IGNOTO, con istante e limiti
-   dipendenze, residui, rischi e prossimo passo

Lo snapshot conversazionale non scrive automaticamente il documento State.

------------------------------------------------------------------------

# 12 --- CHECKPOINT OPERATIVO

Per cambio nodo, saturazione o perdita di contesto preparare #state,
Anchor Register e #switch. Un nuovo commit richiede rebind esplicito,
non automaticamente una nuova chat. Se il nodo prosegue, conservarne l'ID.

BLOCCO DI RIPRESA
@@PROGETTO / tipo:
ID nodo e checkpoint padre:
Mandato, scope ed esclusioni:
Repository / branch / SHA e fonti con provenienza/completezza:
Decisioni e prove valide da riusare:
Operazioni concluse, interrotte, parziali o UNKNOWN:
Consensi ancora validi e divieti:
Output prodotti e criteri ancora aperti:
Dipendenze, rischi e input mancanti:
Primo passo o comando già predisposto e verificato:
Destinatario del recap:

Non inventare un primo comando se mancano task o binding. Nella nuova chat
eseguire il boot pertinente senza presumere letture ereditate. Richieste e
consensi consumati non si riusano; le prove immutate restano riutilizzabili.

------------------------------------------------------------------------

# CQD REPORT

Timestamp: 2026-03-13T13:16:20.999952

Metriche PRE: Paragraphs: 4 Characters: 692 Words: 94 Hash:
94b2e200d44194e4a58afde3888707062eb3f4d81c661a302c651714af5552e1

Metriche POST saranno calcolate dopo generazione.

Metriche POST: Paragraphs: 69 Characters: 3402 Words: 421 Hash:
e4d83c20afcd25a0495b975b4539edb230fb6169ed4e1ca59708d92046d07680

# VERSION HISTORY

v1.5 — 2026-10-27 — Nodo CP-AIOS-EFFICACIA-PROTOCOLLI-20261026-01: introdotto nella sezione 7 il controllo contestuale di avanzamento e la diagnosi mirata di stallo improduttivo; invariati gate, consensi, protezioni e criteri di chiusura. Revisione metodologica circoscritta; gate, consensi e criteri di chiusura invariati.

v1.4 — 2026-10-19 — Nodo CP-ALLINEAMENTO-AIOS-20261019-01: ruoli e autonomia, blocchi d'apertura/ripresa, anti-deriva preventivo e SAFE MODE selettiva, continuità e recap, stati di chiusura e SYNC senza scrittura implicita. Versione proposta in seconda riga; report CQD e voci precedenti conservati.

v1.3 — 2026-10-15 — Fonti tramite integrazioni, memoria come supporto e
checkpoint pertinenti. Per nuove versioni dichiarare un nuovo boot/SHA;
nuova chat se cambia nodo o il contesto e' insufficiente/saturo.
Il CQD report datato sopra e' storico, non la misura di questa revisione.
