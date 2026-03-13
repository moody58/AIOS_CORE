02_AIOS_CQD_Protocol

Documento: 02_AIOS_CQD_Protocol

Versione: v1.0

Progetto: AIOS

Stato: attivo

Data: 2026

INDICE

1 --- SCOPO DEL PROTOCOLLO

2 --- QUANDO APPLICARE CQD

3 --- CONTROLLI DI INTEGRITÀ

4 --- CONTROLLI STRUTTURALI

5 --- CONTROLLO VERSIONAMENTO

6 --- METRICHE DI CONTROLLO

1 --- SCOPO DEL PROTOCOLLO

Il CQD (Controllo Qualità Documenti) è il protocollo che garantisce

l'integrità dei documenti generati nel sistema AIOS.

Il suo obiettivo è assicurare che ogni documento esportato sia:

\- completo

\- coerente

\- non troncato

\- correttamente versionato

\- compatibile con il metasistema.

2 --- QUANDO APPLICARE CQD

Il CQD deve essere applicato prima di ogni esportazione di documento.

Casi tipici:

\- generazione nuovi documenti

\- aggiornamento versioni

\- integrazione contenuti

\- consolidamento decisioni

3 --- CONTROLLI DI INTEGRITÀ

Il protocollo CQD verifica:

Integrità del contenuto

assenza di troncamenti

continuità logica delle sezioni

completezza dei blocchi del documento

4 --- CONTROLLI STRUTTURALI

Il protocollo verifica inoltre:

presenza di header documento

presenza indice (quando necessario)

coerenza delle sezioni

presenza version history

5 --- CONTROLLO VERSIONAMENTO

Il CQD controlla che il documento rispetti il sistema di versionamento:

Numero_Area_NomeDocumento_vX.X

Esempio:

02_AIOS_STP_Protocol_v1.0

La versione aumenta solo quando cambia il contenuto del documento.

6 --- METRICHE DI CONTROLLO

Prima dell'esportazione il CQD registra:

conteggio parole

conteggio caratteri

Dopo l'esportazione verifica:

dimensione del file

integrità del documento esportato

VERSION HISTORY

v1.0 --- Creazione protocollo CQD per controllo qualità documenti AIOS.

CQD CHECK

Parole (stima pre-export): 148

Caratteri (stima pre-export): 1134

Integrità documento: verificata

Struttura: coerente con standard AIOS

7 --- DOCUMENT PIPELINE AIOS

Ogni documento ufficiale del sistema AIOS deve essere generato

seguendo la Document Pipeline AIOS.

Sequenza operativa:

1 --- Anteprima documento

2 --- Verifica metriche preliminari (parole, caratteri)

3 --- Generazione file DOCX

4 --- Verifica metriche post-export

5 --- Applicazione CQD

6 --- Consegna documento

Un documento è considerato ufficiale solo se ha completato

l\'intera pipeline documentale.

8 --- REGOLA DI INTEGRITÀ DOCUMENTALE

Quando un documento viene aggiornato o modificato,

il sistema deve avere accesso al contenuto completo

della versione precedente.

Se il contenuto precedente non è disponibile

deve essere richiesto il caricamento del documento originale.

È vietata la generazione di versioni parziali

o ricostruite in forma sintetica.

Le modifiche devono essere applicate al documento completo

mantenendo l'integrità del contenuto originale,

salvo esplicita richiesta di sintesi.

9 --- GESTIONE ERRORI GENERAZIONE DOCUMENTO

In caso di errore nella generazione del file DOCX

il sistema esegue un massimo di due tentativi.

Tentativo 1 --- rigenerazione documento

Tentativo 2 --- rigenerazione alternativa

Se entrambi falliscono:

il sistema fornisce il contenuto completo

in formato testo strutturato in blocco codice

per copia manuale nel file.

10 --- CQD ESCALATION LEVELS

CQD Livello 1 --- Standard

Controlli:

\- parole pre/post

\- caratteri pre/post

\- dimensione file

CQD Livello 2 --- Diagnostico (attivato in caso di errore)

Controlli aggiuntivi:

\- conteggio paragrafi

\- verifica continuità sezioni

CQD Livello 3 --- Delta Check (modulo opzionale)

Confronto tra versioni successive del documento:

\- parole versione precedente

\- parole versione nuova

\- differenza assoluta

\- variazione percentuale

Il Delta Check non sostituisce il CQD

ed è utilizzato solo in caso di necessità.

VERSION HISTORY

v1.1 --- Introduzione Document Pipeline AIOS,

regola integrità documentale,

gestione errori generazione documenti

e CQD Escalation Levels.

# 11 --- DOCUMENTI DI GRANDI DIMENSIONI

Quando un documento supera dimensioni compatibili con l'output singolo
della chat il sistema può utilizzare modalità alternative.

Modalità supportate:

\- generazione in blocchi sequenziali

\- utilizzo di blocco codice completo

\- copia manuale del contenuto nel file locale

Questa procedura evita il rischio di troncamento dei documenti generati.
Il CQD deve comunque essere applicato al documento finale.
