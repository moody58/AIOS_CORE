# Scopo del documento
Versione: v1.1

Il Meta‑Observation Engine è il sistema di monitoraggio conversazionale
del metasistema AIOS.

Il suo compito è osservare il flusso delle sessioni operative e
suggerire azioni correttive

per mantenere coerenza metodologica, stabilità operativa e continuità
documentale.

Il Meta‑Observation non blocca il flusso della conversazione ma
interviene suggerendo

trigger, anchor o checkpoint quando individua pattern critici o nodi
strutturali.

# Attivazione contestuale e anti-deriva

Il monitoraggio è assistenza conversazionale nel contesto della chat,
non un processo autonomo o un servizio di sorveglianza. Riconoscere il
segnale pertinente e attivare il protocollo secondo il documento madre:
comandi ed equivalenti naturali, State/Source Guard, STP, Incident Management,
CQD, Radar e Anchor nei rispettivi casi. Non attivare indiscriminatamente
tutti i protocolli né inventare letture, test o registrazioni.

La funzione assistiva non sostituisce l'anti-deriva preventivo obbligatorio.
Prima di azioni operative, decisioni vincolanti o incarichi a tool verificare
nodo, mandato/scope, fonti/stato, permessi/consensi e gate tecnici secondo
Session Protocol e Sistema Fonti. Fuori scope: «DEVIAZIONE DAL NODO» e STOP
della sola azione. Fonte, stato o gate mancanti: SAFE MODE mirata, senza
falsa deviazione. Analisi e chiarimenti leciti continuano, senza aggiramenti.

# Funzioni principali

Il Meta‑Observation monitora:

• coerenza della conversazione

• cambi semantici nella discussione

• cambi di nodo operativo

• saturazione o lunghezza della chat

• generazione di documenti

• presenza o assenza di anchor rilevanti

Quando necessario suggerisce:

#state

#session

#switch

#log

oppure l\'uso di anchor strutturali.

# Rilevamento dei cicli improduttivi

Durante l'osservazione contestuale della conversazione, considerare segnali di discontinuità operativa anche:

- richieste di dati già acquisiti e ancora validi;
- ripetizione della stessa analisi o verifica senza nuove condizioni;
- ritorno a decisioni già consolidate senza nuove evidenze pertinenti;
- proposta di ulteriori attività dopo il soddisfacimento dei criteri di chiusura;
- reiterazione di chiarimenti correttivi già forniti dall'utente.

Quando uno di questi segnali è osservabile, indicare brevemente la discontinuità e applicare il controllo di avanzamento previsto dal Session Protocol, preservando prove e decisioni valide.

La Meta-Observation non autorizza ripetizioni, nuove operazioni, cambi di nodo o scritture; non sostituisce i gate preventivi e non costituisce un servizio di monitoraggio autonomo.

# Eventi di cristallizzazione

Quando nella conversazione emergono nodi strutturali il sistema
suggerisce la

cristallizzazione tramite anchor.

Eventi principali:

Decisione confermata

→ suggerire anchor

#DECISION.contesto

Struttura definita

→ suggerire anchor

#STRUCTURE.contesto

Segmento documentale validato

→ suggerire anchor

#DOC.\<docID\>.\<sezione\>

Documento finale generato

→ suggerire anchor

#DOC.NomeDocumento_versione

# Anchor documentali e docID

Durante la costruzione dei documenti la conversazione utilizza un
identificatore

logico di documento (docID).

Formato:

#DOC.\<docID\>.\<sezione\>

Esempio:

#DOC.protocollo_operativo.introduzione

#DOC.protocollo_operativo.trigger_operativi

#DOC.protocollo_operativo.cqd_pipeline

Questi anchor rappresentano segmenti validati del documento e vengono
utilizzati

per comporre il documento finale.

# Cluster documentali

Tutti gli anchor che condividono lo stesso docID appartengono allo
stesso cluster

documentale.

Esempio:

docID: protocollo_operativo

#DOC.protocollo_operativo.introduzione

#DOC.protocollo_operativo.trigger

#DOC.protocollo_operativo.cqd

Il cluster viene utilizzato come base semantica per proporre il contenuto.
Non sostituisce il documento precedente completo e non autorizza a ricostruire
una preimage da segmenti di chat. Verificare l'intera proposta, preservando
le sezioni esterne al delta; per scrivere servono preimage locale completa,
hash dei byte, BOM/EOL, postimage, range e diff del percorso qualificato.
Gli Anchor non sono marker tecnici byte-exact né consenso ad Apply.

# Generazione del documento

Quando il documento viene consolidato:

1\. i segmenti #DOC vengono aggregati

2\. il documento viene generato

3\. viene eseguito CQD

4\. il documento viene versionato

5\. viene generato l\'anchor finale

Esempio:

#DOC.ADEXIMA_Protocollo_Operativo_v1.4

# Tracciabilità

Il Revision Log conserva i riferimenti agli Anchor conversazionali che
hanno contribuito al contenuto, quando realmente disponibili e pertinenti
al delta approvato. Non inventare Anchor o inserirli come nuovi delimitatori
tecnici del motore. La tracciabilità semantica non attesta letture o scritture.

Questo consente di mantenere una catena di provenienza tra conversazione
e

documento versionato.

# Throttling anti‑spam

Per evitare un eccesso di anchor il Meta‑Observation applica una regola
di

throttling.

L\'assistente suggerisce anchor solo quando:

• una decisione è confermata

• una struttura è stabilizzata

• un segmento documentale è validato

• un documento viene generato

Gli anchor non vengono suggeriti per ogni frase della conversazione.

# Collegamento Radar

Quando emerge un insight strategico rilevante il Meta‑Observation può
suggerire

la proposta di registrazione nel Radar di sistema. La valutazione resta
distinta dalla decisione; la registrazione richiede un delta autorizzato.
Gli impatti trasversali seguono SYNC AIOS e Sistema Fonti; nessun aggiornamento
automatico di Radar, State, Regia, Index o Registry.

Pipeline tipica:

#INSIGHT

→ valutazione strategica

→ eventuale registrazione nel Radar

# Output e continuità

Segnalare decisioni, strutture o discontinuità pertinenti senza rituali
ripetitivi. Per apertura, ripresa e chiusura applicare il Session Protocol.
Nei passaggi operativi e ai gate indicare risultati osservati, evidenze,
limiti, decisione e prossimo passo. Non dichiarare il nodo concluso o il
recap recepito senza i risultati e le prove richiesti.

# VERSION HISTORY

v1.1 — 2026-10-27 — Nodo CP-AIOS-EFFICACIA-PROTOCOLLI-20261026-01: aggiunti segnali osservabili di cicli improduttivi e rinvio al Session Protocol, senza nuovi poteri o monitor autonomo. Revisione metodologica circoscritta; nessun monitor autonomo o nuovo potere operativo.

v1.0 — 2026-10-19 — Prima versione esplicita proposta per il documento precedentemente privo di versione e storico. Nodo CP-ALLINEAMENTO-AIOS-20261019-01: assistenza contestuale distinta dal gate anti-deriva, Anchor semantici distinti da preimage/diff, registrazioni soltanto autorizzate e rinvio alla continuità di sessione. Contenuto precedente conservato salvo i delta dichiarati; nessuna Apply o pubblicazione attestata.
