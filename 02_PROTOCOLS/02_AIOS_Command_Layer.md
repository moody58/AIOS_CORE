# AIOS --- Command Layer
Versione: v1.3


Sistema: AIOS

Anno: 2026

1 --- Scopo del documento

Questo documento definisce il Command Layer del sistema AIOS.

Il Command Layer rappresenta l'interfaccia operativa conversazionale

attraverso cui vengono controllate le sessioni di lavoro e i principali

meccanismi del metasistema.

2 --- Concetto di Command Layer

AIOS utilizza trigger conversazionali per attivare comportamenti

specifici del sistema.

Questi trigger funzionano come comandi operativi simili a quelli

di una shell nei sistemi operativi.

3 --- Elenco trigger operativi

#start --- avvio di una nuova sessione di lavoro nel sistema.

#session --- verifica del mandato e avvio o prosecuzione del nodo nella
microsessione, senza rigenerare il blocco d'apertura.

#state --- generazione di uno snapshot dello stato della sessione

o del progetto.

#switch --- trasferimento del lavoro in una nuova conversazione

mantenendo il contesto.

#log --- preparazione di un Incident Report secondo Incident Management;
la registrazione persistente richiede un'azione autorizzata distinta.

#DOC / «avvia la procedura documentale» --- ingresso conversazionale nel
workflow; attiva la lettura delle fonti madre e la preparazione, non Apply.

#help --- richiamo della guida operativa del sistema.

#quick --- modalità operativa veloce.

#deep --- modalità di analisi approfondita.

4 --- Principi operativi

I trigger e le richieste equivalenti in linguaggio naturale attivano
contestualmente la stessa funzione, seguendo il documento madre pertinente.
Non occorre richiedere la parola chiave quando intento, nodo e mandato sono
chiari. L'attivazione conversazionale non prova letture né concede permessi.

Ogni trigger attiva una funzione specifica del sistema.

I trigger possono essere utilizzati in combinazione per definire

il contesto operativo.

5 --- Ruolo nel metasistema

Il Command Layer rappresenta la shell conversazionale del sistema AIOS.

Permette di coordinare le sessioni operative,

mantenere ordine nelle conversazioni

e attivare rapidamente i protocolli del sistema.

6 --- Attivazione Boot Sequence

Il trigger #start attiva la Boot Sequence del sistema AIOS.

La Boot Sequence è definita nel documento:

00_AIOS_BOOT_SEQUENCE

Quando viene utilizzato #start il sistema esegue la sequenza

di inizializzazione della sessione operativa.

#start è implicito all'ingresso in una nuova chat. Le fonti già acquisite
integralmente allo stesso pin e nel contesto ancora valido si riusano;
un richiamo del comando non impone un nuovo boot organizzativo del nodo.

La sequenza ricostruisce:

• contesto della sessione

• progetto attivo

• stato del progetto (STATE o Regia)

• nodo operativo corrente

Questo garantisce che ogni nuova sessione parta con il

contesto corretto del metasistema AIOS.

7 --- Output, continuità e limiti dei comandi

#start: ricevuta di ruolo, nodo, mandato, repository/branch/SHA, fonti
realmente lette e completezza, checkpoint, provenienza e limiti.

Nodo confermato dalla Regia: la Regia produce il BLOCCO D'APERTURA secondo
01_METHOD/01_AIOS_SESSION_PROTOCOL.md.

#session o mandato equivalente nella microsessione: verificare mandato,
dipendenze e fonti; avviare o proseguire il nodo confermato senza rigenerare
il blocco d'apertura. Non creare un nuovo nodo implicito e non aprire
un'altra chat per l'ordinaria esecuzione.

#help: mostrare trigger, requisiti, documenti madre e limiti pertinenti.

#quick e #deep: regolare profondità e dettaglio; scope, fonti e gate
restano quelli del mandato.

#state: snapshot di nodo/scope, fonti/SHA, checkpoint, decisioni/Anchor,
risultati/prove, consensi ancora validi, stato DOCUMENTATO/VERIFICATO LIVE/
IGNOTO, residui e prossimo passo. Non scrive il documento State.

#switch: soltanto per cambio nodo, saturazione o perdita di contesto.
Preparare #state, Anchor Register e blocco di ripresa; se il nodo prosegue
mantenerne l'ID. La nuova chat esegue il proprio boot senza presumere letture.

#log: report con fatti, ipotesi, severità e impatto; ID persistente e
registrazione soltanto se realmente assegnati e verificati.

#DOC o richiesta naturale equivalente: leggere il manuale, il contratto e
README pertinenti; determinare root, target, preimage complete, percorso
C/A realmente disponibile e gate, poi preparare le proposte. Per l'ingresso
GitHub-first richiedere un pin verificato e il confronto con SHA-256 e layout
dei file locali, con identificazione per root + percorso relativo. L'Anchor
#DOC da solo non costituisce né consenso al pacchetto né autorizzazione a
copia, Check/Apply, provisioning o Git write. In caso di ambiguità reale
fra semplice documentazione/Anchor e avvio operativo, chiedere conferma.

Prima dell'azione verificare nodo, mandato/scope, fonti/stato, permessi,
consensi e gate tecnici. Fuori scope: «DEVIAZIONE DAL NODO» e STOP della
sola azione. Requisito mancante: SAFE MODE mirata, continuando l'analisi
lecita; nessun fallback per aggirare il blocco. Il protocollo di sessione
governa autonomia, escalation e chiusura.

OUTPUT E VERIFICHE
Nei passaggi operativi e ai gate indica risultato osservato, evidenze, limiti, decisione e prossimo passo; le conversazioni ordinarie non richiedono rituali di validazione a ogni messaggio. Il nodo si chiude PASS soltanto con risultati richiesti verificati; altrimenti BLOCCATO/FALLITO motivato con checkpoint riutilizzabile.

Storico revisioni

v1.3 — 2026-10-20 — Proposta per il nodo CP-AIOS-DWF-CONSOLIDAMENTO-20261020-01: ingresso #DOC e forma naturale, scelta C/A e acquisizione GitHub-first verificata byte per byte. Non autorizza Apply, provisioning o scritture.

v1.2 — 2026-10-19 — Nodo CP-ALLINEAMENTO-AIOS-20261019-01: equivalenti naturali, output e limiti dei comandi, anti-deriva e continuità, OUTPUT E VERIFICHE. Versione proposta in seconda riga; nessun comando tecnico, permesso o registrazione attivato dalla revisione.

R02 — 2026-10-19 — Review editoriale mirata: nodo confermato dalla Regia distinto da #session nella microsessione; il primo produce il blocco d'apertura, il secondo verifica mandato, dipendenze e fonti e avvia/prosegue il nodo senza rigenerarlo. Nessuna esecuzione locale.

v1.1 --- Collegamento tra trigger #start e Boot Sequence del sistema
AIOS.

v1.0 --- Creazione iniziale del Command Layer.
