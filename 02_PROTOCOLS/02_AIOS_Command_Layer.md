# AIOS --- Command Layer

Versione: v1.1

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

#session --- apertura di una sessione operativa su un nodo specifico.

#state --- generazione di uno snapshot dello stato della sessione

o del progetto.

#switch --- trasferimento del lavoro in una nuova conversazione

mantenendo il contesto.

#log --- generazione di un Incident Report nel sistema di log AIOS.

#help --- richiamo della guida operativa del sistema.

#quick --- modalità operativa veloce.

#deep --- modalità di analisi approfondita.

4 --- Principi operativi

I trigger non sostituiscono il linguaggio naturale ma lo supportano.

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

La sequenza ricostruisce:

• contesto della sessione

• progetto attivo

• stato del progetto (STATE o Regia)

• nodo operativo corrente

Questo garantisce che ogni nuova sessione parta con il

contesto corretto del metasistema AIOS.

Storico revisioni

v1.1 --- Collegamento tra trigger #start e Boot Sequence del sistema
AIOS.

v1.0 --- Creazione iniziale del Command Layer.
