\# AIOS — BUILD PROTOCOL



Sistema: AIOS

Modulo: Document Build System

Versione: v1.2

Stato: Consolidato (LOGOS validated)



\############################################################

SCOPO

\############################################################



Definire il protocollo ufficiale per:



• audit documentale

• costruzione ordine logico

• generazione documento unico

• creazione tool di build

• esecuzione operativa



Il protocollo è progettato per essere:



• replicabile

• deterministico

• scalabile multi-progetto



\############################################################

PRINCIPIO FONDAMENTALE

\############################################################



Il sistema NON è automatico.



È:



DETERMINISTICO



L’ordine dei documenti NON viene dedotto,

ma definito tramite audit.



\############################################################

FASE 0 — DEFINIZIONE CONTESTO PROGETTO

\############################################################



PRIMA di qualsiasi operazione è obbligatorio definire:



• Nome progetto (PROJECT\_NAME)

• Root progetto

• Output target



Esempio:



PROJECT\_NAME = LOGOS

ROOT = AIOS\_GITHUB\\LOGOS\_ENGINE

OUTPUT = LOGOS\_MASTER.md



Regola critica:



Il nome del progetto deve essere:



• esplicito

• coerente

• NON generico (NO TEMPLATE)



\############################################################

FASE 0.1 — DEFINIZIONE ROOT OPERATIVE

\############################################################



Root fondamentali:



• Repository progetto

• Cartella tools

• Cartella scripts locale (es: C:\\scripts)



Regola:



Gli script si sviluppano SEMPRE in locale (C:\\scripts)



Motivazione:



• evitare problemi encoding

• evitare interferenze OneDrive

• evitare corruzione PowerShell



\############################################################

FASE 1 — AUDIT SISTEMA

\############################################################



Obiettivo:



ricostruire struttura reale del progetto



Output:



\#DOC.audit.matrix



\############################################################

FASE 2 — COSTRUZIONE ORDINE LOGICO

\############################################################



Pipeline:



SPEC

→ ARCHITECTURE

→ SYSTEM MAP

→ DATA MODEL

→ ENGINE

→ SCRIPT LAYER

→ RUNTIME

→ META



Output:



sequenza deterministica



\############################################################

FASE 3 — BUILD LIST

\############################################################



Traduzione tecnica dell’ordine logico:



$array $files



Regola:



lo script NON decide nulla



\############################################################

FASE 4 — GENERAZIONE SCRIPT (SAFE MODE)

\############################################################



CRITICO



Gli script NON si scrivono manualmente



Procedura:



Remove-Item C:\\scripts\\build-\[project].ps1



@'

\[script]

'@ | Set-Content C:\\scripts\\build-\[project].ps1 -Encoding UTF8



\############################################################

STANDARD DI NAMING

\############################################################



Script:



build-\[project].ps1



Output:



\[PROJECT]\_MASTER.md



Esempi:



build-logos.ps1

LOGOS\_MASTER.md



build-aios.ps1

AIOS\_MASTER.md



Regola:



• naming coerente

• derivato dal progetto

• NO TEMPLATE



\############################################################

SCRIPT ESEMPIO (LOGOS)

\############################################################



Questo è un esempio reale.



Deve essere adattato al progetto attivo.



$RootPath = "\[PROJECT\_ROOT]"

$OutputFile = "\[PROJECT\_ROOT]\[PROJECT]\_MASTER.md"



$files = @( ... )



\############################################################

FASE 5 — VALIDAZIONE

\############################################################



Expected vs Found



\############################################################

FASE 6 — OUTPUT

\############################################################



File:



\[PROJECT]\_MASTER.md



\############################################################

FASE 7 — DISTRIBUZIONE SCRIPT

\############################################################



Copy-Item da locale → tools



\############################################################

FASE 8 — UX (.BAT)

\############################################################



File:



build-\[project].bat



Contenuto:



@echo off

cd /d C:\\scripts



powershell -ExecutionPolicy Bypass -File build-\[project].ps1



pause



\############################################################

PIPELINE COMPLETA

\############################################################



CONTESTO PROGETTO

→ ROOT

→ AUDIT

→ ORDINE

→ BUILD LIST

→ SCRIPT (SAFE)

→ VALIDAZIONE

→ OUTPUT

→ COPY

→ BAT



\############################################################

REGOLE OPERATIVE

\############################################################



1\. NO script manuali

2\. NO ordine automatico

3\. SI audit

4\. SI validazione

5\. SI naming coerente

6\. NO riuso diretto script tra progetti



\############################################################

GESTIONE NUOVI FILE

\############################################################



nuovo file

→ audit

→ inserimento build list

→ rebuild



\############################################################

SCALABILITÀ

\############################################################



Livello 1:

builder per progetto



Livello 2:

multi builder



Livello 3:

config system



\############################################################

CONCLUSIONE

\############################################################



Ogni progetto ha il suo builder.



Il sistema è replicabile,

non riutilizzabile automaticamente.



\############################################################



