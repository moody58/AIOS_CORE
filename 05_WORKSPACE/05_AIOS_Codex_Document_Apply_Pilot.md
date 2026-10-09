# Documento: 05_AIOS_Codex_Document_Apply_Pilot

Versione: v0.1
Sistema: AIOS
Tipo: documento di prova non critico
Stato: documento pilota per la prova controllata

## 1. Scopo

Verificare il flusso documentale tramite l'entrypoint installato, con Check preventivo, approvazione umana del change-set e verifica delle evidenze. Il file è dedicato esclusivamente alla prova di creazione controllata.

## 2. Sezione protetta

Questo blocco deve restare identico durante la futura prova di modifica per anchor.

## 3. Sezione autorizzabile

Contenuto iniziale del pilot. La modifica di questo blocco richiederà un DOC-HANDOFF separato e approvato.

## 4. Criteri di verifica

Confrontare hash, diff, metriche e recovery prima e dopo ogni operazione. Il Check produce una previsione e la creazione richiede una successiva approvazione esplicita. Il rollback richiede un'approvazione separata e conserva le evidenze. Commit e push richiedono autorizzazioni distinte.

## VERSION HISTORY

### v0.1 - 2026-10-02

Testo iniziale predisposto per la prova di creazione controllata.
