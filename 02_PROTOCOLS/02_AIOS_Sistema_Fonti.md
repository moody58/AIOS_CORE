Documento: 02_AIOS_Sistema_Fonti
Versione: v1.2


Progetto: AIOS

Stato: attivo

Data: 2026

# INDICE

1 --- SCOPO DEL PROTOCOLLO

2 --- QUANDO UTILIZZARE LE FONTI

3 --- TIPOLOGIE DI FONTI

4 --- CRITERI DI UTILIZZO

5 --- INTEGRAZIONE NEL PROCESSO AIOS

6 --- RISCHI DA EVITARE

7 --- FONTI DOCUMENTALI, INTEGRAZIONI E COPIE

# 1 --- SCOPO DEL PROTOCOLLO

Il Sistema Fonti è il protocollo che disciplina l\'utilizzo delle
informazioni esterne\
nel sistema AIOS.\
\
Il suo obiettivo è garantire che le decisioni del sistema possano essere
supportate,\
quando necessario, da fonti verificabili senza compromettere la
chiarezza strategica.\
\
Le fonti supportano il processo decisionale ma non sostituiscono il
giudizio\
strategico del sistema.

# 2 --- QUANDO UTILIZZARE LE FONTI

Il protocollo viene attivato quando una decisione richiede:\
\
verifica tecnica\
confronto con benchmark\
controllo normativo\
analisi di mercato\
conferma di dati specifici

# 3 --- TIPOLOGIE DI FONTI

Il sistema distingue due categorie principali di fonti.\
\
Fonti strategiche\
benchmark di settore\
pattern di mercato\
analisi comparative\
modelli di business\
\
Fonti tecniche\
normative\
standard tecnici\
documentazione ufficiale\
specifiche tecniche

# 4 --- CRITERI DI UTILIZZO

Le fonti devono essere utilizzate secondo alcuni criteri fondamentali.\
\
Le fonti devono:\
essere pertinenti\
essere verificabili\
non introdurre complessità inutile\
non sostituire la logica del sistema\
\
Le fonti servono a supportare una decisione, non a delegarla.

# 5 --- INTEGRAZIONE NEL PROCESSO AIOS

Il Sistema Fonti può intervenire in diversi momenti del sistema.\
\
Durante lo STP per supportare una decisione critica.\
Durante l\'analisi strategica di un progetto.\
Durante la verifica tecnica di una soluzione.\
Durante la documentazione quando servono riferimenti esterni.

# 6 --- RISCHI DA EVITARE

Il protocollo segnala alcuni rischi tipici nell\'uso delle fonti.\
\
dipendenza eccessiva da fonti esterne\
uso di fonti non verificabili\
confusione tra informazione e decisione\
introduzione di complessità non necessaria

# 7 --- FONTI DOCUMENTALI, INTEGRAZIONI E COPIE

### Fonti, copie e sessioni con integrazioni — 2026-10-15

La fonte documentale consolidata e' la repository del progetto. Al boot
risolvere branch e commit SHA, poi leggere integralmente i documenti necessari
a quello SHA, senza mescolare letture successive di main. Registrare mezzo
di acquisizione, percorsi, commit e limiti. Cercare prima tramite le capacita'
disponibili; se una fonte necessaria non e' accessibile chiedere soltanto il
materiale mancante. Connessione configurata, nome file o risultato di ricerca
non attestano lettura completa. Nessun fallback silenzioso su allegati vecchi.

La working copy locale e' la preimage per ogni scrittura: acquisirla completa,
con hash, BOM/EOL e modifiche non committate. GitHub non sostituisce un delta
locale. Commit registra in Git locale; push pubblica sul remoto. Uguaglianza
dei commit non prova identita' dei byte del PC, dei file esclusi o dei servizi.
Le letture native e le guardie restano quelle dell'azione realmente qualificata.

Le fonti persistenti allegate al progetto ChatGPT sono riservate ordinariamente
ai checkpoint attivi non ancora assorbiti. Gli allegati di una singola chat
possono invece contenere report, preimage locali, export pertinenti o fonti
eccezionalmente indisponibili: dichiararne origine, hash quando disponibile,
scopo e divergenze. Non duplicare abitualmente i documenti canonici gia' su
GitHub. Una correzione esplicita dell'utente resta un delta da integrare,
non una prova che il remoto sia gia' aggiornato.

I checkpoint possono essere gia' tracciati oppure allegati: dichiarare quale
copia viene usata. Non imporre il doppio caricamento. Se duplicati, confrontare
contenuto e provenienza; non scegliere soltanto per data o nome. Dopo il
recepimento nei documenti attivi registrarne l'assorbimento e valutare
l'archiviazione. Creazione, spostamento o cancellazione nella repo seguono
un task autorizzato e un percorso che li supporti; il modify_ranges esistente
non li abilita. Nessuna cancellazione automatica o riscrittura della storia Git.
Non caricare credenziali, dati personali superflui o materiali privati in repo
pubbliche. Le prove necessarie alla ripartenza restano conservate.

Lo snapshot documentale della sessione resta esplicito. Dopo una pubblicazione
necessaria al lavoro dichiarare un nuovo boot con nuovo SHA; non e' obbligatorio
cambiare chat se contesto, nodo e qualita' sono ancora adeguati. Un cambio nodo
o saturazione richiede la nuova sessione prevista dai protocolli. Nessun
aggiornamento di file, memoria o allegato modifica da solo lo snapshot attivo.
Un rebind dopo commit acquisisce sempre nuovi binding; non riusa descriptor
o approvazioni consumati. Le conversazioni precedenti, se recuperabili con
capacita' disponibili, aiutano la ricostruzione ma non attestano un runtime.

I servizi collegati sono fonti live soltanto per gli oggetti davvero letti.
Per Retool/Supabase dichiarare identita', istante, oggetti e proprieta'
verificate; il commit documentale non congela app o DB. Nessun export di
righe o controllo live estraneo e' necessario a una sessione solo documentale.
Accesso in lettura non autorizza scritture; permessi tecnici e connessioni
vanno osservati, non dedotti dal testo delle istruzioni.

## 7.1 — Source Guard, State Guard e classi di evidenza

Attivare contestualmente il protocollo quando servono fonti, stato,
preimage, verifica live o riconciliazione. Prima dell'azione verificare
completezza, provenienza e sufficienza delle fonti effettivamente necessarie.
Riutilizzare letture integrali valide nello stesso contesto e allo stesso
SHA; non riaprire acquisizioni concluse senza un requisito nuovo.

Un 404 su repository privata non prova inesistenza. Verificare l'accesso
tramite le capacità disponibili; non imporre Drive, modificare visibilità
o sostituire silenziosamente la fonte. Per ogni alternativa dichiarare
origine, versione/data, contenuto coperto, divergenze e limiti.

Distinguere DOCUMENTATO, VERIFICATO LIVE e IGNOTO con oggetto, proprietà,
istante e prova. Il pin GitHub qualifica il consolidato; la ricevuta di
Git pulito non certifica byte, BOM/EOL, newline, file esclusi o permessi.

Fonte o stato mancanti: tentare il recupero pertinente e chiedere soltanto
l'input ancora necessario; SAFE MODE della sola azione dipendente.
Fuori nodo o scope: «DEVIAZIONE DAL NODO» e STOP dell'azione incompatibile.
La mancanza di un requisito non va qualificata come falsa deviazione.
Analisi e chiarimenti leciti possono continuare, senza aggiramenti,
retry o ricostruzioni da estratti.

## 7.2 — SYNC AIOS, riconciliazione e scritture

SYNC AIOS è pertinente agli impatti trasversali metodologici, strategici
o strutturali, non ai progressi ordinari locali. La Control Room riceve
il blocco, verifica provenienza ed evidenze, confronta eventi esistenti
ed evita duplicazioni; quindi prepara la proposta di registrazione secondo
03_REGISTRY/AIOS_EVENT_REGISTRY.md.

Ricezione, riconciliazione e proposta non equivalgono a scrittura autorizzata.
Il recap alla Regia conversazionale segue PREPARATO → TRASFERITO → RECEPITO,
con prove del passaggio e del recepimento. Le modifiche ai file di Event
Registry, Dashboard, Project Index, Radar, Regia o State richiedono
separatamente target, preimage, delta, consenso e gate pertinenti.
Non alterare registrazioni storiche né dichiarare un ID o un recepimento
persistente senza prova; il recap conversazionale non attesta una scrittura
documentale.
Nel nodo CP-ALLINEAMENTO-AIOS-20261019-01 l'Event Registry è soltanto fonte.

# CQD CHECK

Parole (stima pre-export): 207

Caratteri (stima pre-export): 1534

Integrità documento: verificata

Struttura: coerente con standard AIOS

# VERSION HISTORY

v1.2 — 2026-10-19 — Nodo CP-ALLINEAMENTO-AIOS-20261019-01: accesso/provenienza e classi di evidenza, Source/State Guard selettive e SYNC come ricezione/riconciliazione/proposta senza scrittura implicita. Versione proposta in seconda riga; storico e metriche pregresse conservati.

R02 — 2026-10-19 — Review editoriale mirata: recap della Regia conversazionale con stati e prove di trasferimento/recepimento distinto dalla modifica dei file, soggetta separatamente a preimage, delta, consenso e gate. Nessuna scrittura o esecuzione locale.

v1.1 — 2026-10-15 — Fonti da repository a SHA fisso, working copy, live, allegati e checkpoint.
Le metriche CQD sottostanti sono storiche, non misure della presente revisione.

v1.0 --- Creazione protocollo Sistema Fonti per il sistema AIOS.
