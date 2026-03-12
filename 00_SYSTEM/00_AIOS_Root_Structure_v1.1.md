Documento: 00_AIOS_Root_Structure

Versione: v1.1

Sistema: AIOS

Tipo: Architettura filesystem

Anno: 2026

AIOS --- ROOT STRUCTURE

1\. SCOPO DEL DOCUMENTO

Questo documento definisce la struttura ufficiale del filesystem del
sistema AIOS.

La Root Structure rappresenta la mappa organizzativa del metasistema

e stabilisce la collocazione delle principali componenti operative

e documentali.

La struttura è progettata per garantire:

\- navigabilità

\- separazione delle responsabilità

\- scalabilità del sistema

\- chiarezza metodologica

2\. PRINCIPIO ARCHITETTURALE

Il sistema AIOS è organizzato per livelli funzionali.

AIOS rappresenta il sistema metodologico e di governance

dei progetti.

Il database operativo dei progetti è gestito dal sistema

LOGOS Engine, che risiede al di fuori della root AIOS.

Separazione dei livelli:

AIOS

metodo e governance

↓

LOGOS ENGINE

motore dati operativo

↓

ISTANZE PROGETTO

database dei singoli progetti

3\. STRUTTURA ROOT AIOS

AIOS

│

├── 00_SYSTEM

│

├── 01_METHOD

│

├── 02_PROTOCOLS

│

├── 03_REGISTRY

│

├── 04_PROJECTS

│

├── 05_WORKSPACE

│

├── 06_LOGOS

│

├── 07_LAB

│

└── 08_ARCHIVE

4\. DESCRIZIONE DELLE MACROAREE

00_SYSTEM

Contiene i documenti architetturali del sistema AIOS.

Include:

\- System Map

\- Root Structure

\- Boot Sequence

\- Meta Observation

\- documentazione generale del sistema

01_METHOD

Contiene il metodo operativo del sistema AIOS.

Include:

\- Metodo AIOS

\- Session Protocol

\- State Protocol

\- Regia Universale

02_PROTOCOLS

Contiene i protocolli operativi del sistema.

Include:

\- Project Launch Protocol

\- STP Stress Test Protocol

\- CQD Controllo Qualità Documenti

\- Sistema Fonti

03_REGISTRY

Rappresenta lo stato globale del sistema.

Include:

\- Dashboard

\- Project Index

\- Project Status

\- Active Nodes

\- Radar Sistema

Il Registry rappresenta la vista sintetica del metasistema.

04_PROJECTS

Contiene le strutture documentali dei singoli progetti.

Ogni progetto possiede una propria struttura interna

con Regia, documenti operativi e archivio.

05_WORKSPACE

Area operativa utilizzata durante le sessioni di lavoro.

Include:

\- analisi

\- sviluppo contenuti

\- log decisionale

\- materiali temporanei

06_LOGOS

Area documentale del sistema LOGOS.

Contiene esclusivamente documentazione relativa al motore dati:

\- specifiche tecniche

\- notebook metodologici

\- modelli dati

\- changelog

\- documentazione analitica

Questa area NON contiene il database operativo.

07_LAB

Area di sperimentazione del sistema.

Il Lab ospita:

\- idee grezze

\- concept

\- prototipi

\- esperimenti metodologici

Il Lab rappresenta lo spazio di esplorazione del metasistema.

08_ARCHIVE

Area di archiviazione storica.

Include:

\- versioni precedenti

\- materiali obsoleti

\- storico dei progetti.

5\. SEPARAZIONE CON IL MOTORE DATI LOGOS

Il database operativo LOGOS Engine non è contenuto nella root AIOS.

Il motore dati risiede su infrastruttura separata.

Struttura semplificata:

Google Drive

│

└── LOGOS_ENGINE

│

├── LOGOS_TEMPLATE

├── LOGOS_ADEXIMA

├── LOGOS_ASPRI

├── LOGOS_MAURIZIOLAB

│

└── ARCHIVE

LOGOS_TEMPLATE rappresenta il modello universale del database.

6\. IDENTITÀ DEI PROGETTI

L\'identità ufficiale dei progetti è gestita dal sistema AIOS.

Un progetto è considerato attivo nel sistema

solo se registrato nel documento:

Project_Index

contenuto nel Registry.

Il database LOGOS rappresenta l\'infrastruttura dati

del progetto ma non ne definisce l\'identità.

7\. KERNEL DOCUMENTALE AIOS

Il sistema AIOS è definito da un insieme ristretto

di documenti fondamentali denominato Kernel Documentale.

Il Kernel include:

System_Map

Root_Structure

Boot_Sequence

Metodo_AIOS

Session_Protocol

State_Protocol

Regia_Universale

Project_Launch_Protocol

STP_Protocol

CQD_Protocol

Sistema_Fonti

Le modifiche a questi documenti equivalgono

a modifiche dell\'architettura del sistema AIOS.

8\. BACKUP DEL SISTEMA

Il backup del sistema non è contenuto nella root AIOS.

I backup sono mantenuti in una cartella esterna

allo stesso livello del sistema.

Esempio:

AIOS

AIOS_Backup

ADEXIMA

Questa separazione garantisce maggiore sicurezza

e resilienza del sistema.

VERSION HISTORY

v1.1

Aggiornamento struttura root.

Introduzione LOGOS come livello documentale.

Separazione architetturale AIOS / LOGOS Engine.

Definizione Kernel Documentale AIOS.

v1.0

Versione iniziale della Root Structure.
