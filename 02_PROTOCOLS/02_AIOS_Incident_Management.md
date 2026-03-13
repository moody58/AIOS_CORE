# 1 --- SCOPO

Il modulo Incident Management registra bug e problemi operativi emersi
durante le sessioni di lavoro del sistema AIOS.

# 2 --- SISTEMA LOG

Gli incidenti sono registrati nel sistema LOG e identificati tramite un
codice progressivo: LOG-001, LOG-002, LOG-003.

# 3 --- TRIGGER INCIDENT REPORT

Il trigger #log analizza la discussione corrente e genera
automaticamente un AIOS INCIDENT REPORT.

# 4 --- STRUTTURA INCIDENT REPORT

ID, Data, Progetto, Macroarea, Chat origine, Documenti coinvolti,
Operazione eseguita, Sintomi osservati, Impatto operativo, Cause
probabili, Soluzione proposta, Stato.

# 5 --- SEVERITÀ INCIDENTI

CRITICAL --- problema che blocca il lavoro o compromette l'integrità.

OPERATIVE --- problema che rallenta o complica il lavoro.

MINOR --- osservazione o comportamento minore.

# 6 --- COLLEGAMENTO SESSIONI

Quando un incidente richiede sviluppo può essere aperta una nuova
sessione citando l\'incidente.

#start

#session

@@LOG-XXX
