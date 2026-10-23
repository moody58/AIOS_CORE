Documento: 02_AIOS_Project_Launch_Protocol
Versione: v1.3

Sistema: AIOS
Tipo: Protocollo di avvio dei progetti derivati

# 1. Scopo e principio fondamentale

Definire l'avvio di un progetto che adotta il metodo AIOS, conservando il ruolo della Control Room e l'autonomia dei progetti figli. La Control Room coordina il metasistema, **non sviluppa direttamente i progetti**. Control Room e Regie sono discussioni; il file `00_PROJECT_Regia.md` è un consolidato, non la Regia stessa.

Due ingressi equivalenti portano alla **medesima sequenza di Boot e Initialization**, già disciplinata dai documenti del Template. Il Launch CORE non ne riscrive il metodo e non introduce un installer o un formato concorrente.

# 2. Modalità di avvio

## A — Procedura guidata dalla Control Room

1. Riconoscere l'intenzione (anche in linguaggio naturale) e raccogliere nome, scopo e risultato iniziale, riutilizzando i dati già confermati.
2. Proporre la classificazione storica: **livello 1 — leggero**, **livello 2 — strutturato**, **livello 3 — sistemico**. È una valutazione di complessità, non un obbligo di moduli o aree.
3. Confermare mandato e responsabilità; guidare alla creazione o identificazione di una repository derivata da `AIOS_PROJECT_TEMPLATE` e del corrispondente progetto ChatGPT. Nessuna creazione è implicita nel mandato conversazionale.
4. Consegnare alla futura Regia un unico blocco d'apertura con obiettivo, scope, scelte confermate, repository, fonti, checkpoint e dipendenze. PREPARATO, TRASFERITO e RECEPITO richiedono prove distinte.
5. Proseguire con la sequenza comune della sezione 3. La Control Room non entra nell'operatività del figlio.

## B — Duplicazione autonoma del Template GitHub

1. L'utente seleziona **Use this template** in `moody58/AIOS_PROJECT_TEMPLATE`, creando la propria repository, e prepara il proprio progetto ChatGPT secondo il README pubblicato.
2. Avvia la discussione Regia del progetto senza passaggio obbligatorio dalla Control Room. Identità, classificazione e scelte si confermano con Initialization.
3. Proseguire con la **stessa sequenza comune** della sezione 3. Il solo clone non comporta registrazione in AIOS_CORE.

# 3. Sequenza comune obbligatoria

1. **Fonte e identità.** Usare la repository **derivata** reale, con branch e SHA osservati. Non confondere la repository figlia con CORE o Template; pin, permessi e letture non sono ereditati.
2. **Tab ChatGPT prima della prima chat.** Dalle `UNIVERSAL_PROJECT_RUNTIME_INSTRUCTIONS.md` della repository derivata copiare *solo* il blocco canonico `BOOTSTRAP TAB CHATGPT` nella tab Instructions del nuovo progetto ChatGPT, verificando il limite di 8.000 caratteri. Nessuna tab provvisoria, bootstrap duplicato o copia dell'intero documento.
3. **Regia e Boot.** Aprire la discussione Regia. La prima chat attiva implicitamente `00_FONDAMENTA_PROGETTO/00_PROJECT_BOOT_SEQUENCE.md`: acquisizione integrale delle fonti necessarie al pin e ricevuta con stato, prove e limiti. La discussione e il documento Regia sono distinti.
4. **Initialization.** Secondo la condizione documentata (`UNCONFIGURED`, `IN_PROGRESS`, `READY`; `UNKNOWN` se non determinabile) seguire `00_FONDAMENTA_PROGETTO/00_PROJECT_INITIALIZATION.md`, in modo progressivo e senza perdere conferme già acquisite.
5. **Consolidamento iniziale.** Preparare e approvare, tramite i gate del figlio, i contenuti dinamici nei filename stabili `00_PROJECT_Regia.md`, `00_PROJECT_State.md` e `00_PROJECT_System.md`. Non rinominare i file canonici; aree, roadmap, LOGOS e altri moduli applicativi sono opzionali.
6. **Scritture e prontezza.** Quando servono modifiche documentali, seguire il DWF della repository derivata con profilo e permessi specifici, senza copiare binding di CORE. Distinguere proposta, approvazione, Apply/Verify, commit/push e tab. Dichiarare `READY` solo con prove sufficienti; aprire un nodo operativo soltanto se approvato.

La sequenza è la stessa per entrambi gli ingressi. Il Kernel metodologico è completo; si attivano solo i controlli pertinenti, riusando le prove valide senza audit ripetitivi.

# 4. Raccordi e responsabilità

- **Regia figlia:** possiede decisioni e lavoro operativo; il consolidato `00_PROJECT_Regia.md` non crea un altro formato di attivazione. Il vecchio `PROJECT_Regia_Attivazione_Template`, menzionato in v1.2, non è una dipendenza del Template pubblicato e non deve essere ricreato per deduzione.
- **Control Room:** guida l'ingresso A e mantiene coordinamento, osservatorio e Registry trasversali nei propri confini; il percorso B non richiede preventivo recepimento.
- **Project Index:** per un progetto effettivamente assunto nel coordinamento AIOS valutare aggiornamento dell'indice e coerenza della dashboard secondo le fonti correnti. Verificare eventuali voci esistenti e richiedere delta, consenso e percorso qualificato. Non registrare automaticamente ogni repository derivata.
- **Provenienza e consensi:** assenza di fonti, preimage o permessi impone SAFE MODE soltanto dell'azione dipendente. Questo documento non crea repository, chat, file, registrazioni o autorizzazioni di scrittura.

# 5. Fonti e criterio di verifica

Fonte CORE: `moody58/AIOS_CORE`, `main`, pin documentale di preparazione `e26da4d5ee12ed2857978fa86f8984ba2e6e14bd`. Template già pubblicato: `moody58/AIOS_PROJECT_TEMPLATE`, `main`, SHA `23d21f927047a0df6676793f527e6581ba2fc5a6`.

Il **README** del Template presenta i due ingressi; **Boot Sequence** e **Initialization** della repository figlia sono le fonti madri per avvio e personalizzazione. Per mandato, continuità, provenienza e scritture restano competenti in CORE Session Protocol, State Protocol e Sistema Fonti, oltre a CQD/DWF nel loro scope.

Criterio di chiusura del lancio: percorso scelto dichiarato, repository figlia identificata, bootstrap unico inserito, ricevuta di Boot, Initialization avviata o completata con checkpoint e responsabilità chiare. Il collaudo di un progetto derivato è una prova successiva, non implicita nella pubblicazione del Launch CORE.

# VERSION HISTORY

v1.3 — 2026-10-23 — Raccordo Gate 4 al Template pubblicato: doppio ingresso Control Room/GitHub, unica sequenza Boot/Initialization, bootstrap canonico, autonomia delle Regie, classificazione preservata e Project Index senza scritture automatiche. Proposta di modifica: il testo non attesta Apply, commit o push.

v1.2 — Integrazione AIOS Universal Project Template e generazione stato iniziale progetto.

v1.1 — Rimozione template interno e integrazione PROJECT_Regia_Attivazione_Template.

v1.0 — Definizione del protocollo ufficiale di avvio progetti AIOS.
