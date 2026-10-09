# AIOS Codex Safety Contract

Documento: 02_AIOS_Codex_Safe_Document_Apply
Versione: v0.6
Data: 2026-10-09
Sistema: AIOS
Nodo: AIOS CODEX SAFE DOCUMENT APPLY
Anchor: #DOC.aios.codex.safe_document_apply.contract
Stato: allineamento P3; cinque cicli documentali tracciati chiusi.
Attivazione di questa revisione: condizionata a provisioning separato autorizzato e Verify.
Baseline non adottata; production_ready=false.

## 1. Fonti e responsabilità

Questo contratto integra il Kernel AIOS senza sostituirlo. Le fonti canoniche
sono Boot Sequence e Kernel Manifest in 00_SYSTEM, Method/Session/State in
01_METHOD, CQD/STP/Sistema Fonti/Chat Anchor/Incident Management in 02_PROTOCOLS.
Percorsi e naming effettivi sono quelli di AIOS_CORE, verificati allo snapshot
`9483009e4e9a6bc547a256e7b6a70775731e8547`.

ChatGPT governa analisi, sviluppo, test, decisioni e contenuto documentale.
L'utente approva il change-set identificato da SHA-256 e la sua applicazione.
Codex locale raccoglie evidenze e invoca soltanto l'esecutore approvato.
L'esecutore applica dati dichiarativi; non interpreta decisioni né esegue
comandi contenuti nei documenti. Una proposta non diventa una modifica eseguita
finché non esistono evidenze locali verificabili.

## 2. Autonomia delle root

Un handoff riguarda una sola root Git, un progetto e un nodo. AIOS stabilisce
gli invarianti comuni; naming, versionamento e archiviazione sono definiti
dalle fonti della repository bersaglio. Nessun fallback alle convenzioni LOGOS
per ADEXIMA o altri progetti. Il profilo locale può restringere i controlli,
non disabilitarli. Regole mancanti o in conflitto richiedono STOP.

## 3. Source Guard e preflight

Prima di compilare l'handoff devono essere disponibili i file precedenti
completi della working copy, con SHA-256 dei byte reali. Lo SHA-1 del blob Git
ha un ruolo distinto. Le conversioni LF/CRLF di Git non autorizzano modifiche
globali ai documenti locali. Fonti, profilo, policy, schema ed esecutore sono
vincolati da impronte.

Durante Check: root/origin/branch/HEAD/upstream corrispondenti, verifica
remota del branch atteso senza fetch/pull; immediatamente prima di Apply
ricontrollare i vincoli locali e le evidenze remote vincolate al Check.
Il bridge acquisito esegue Apply/Verify offline; non certifica una nuova
osservazione remota al momento di Apply. Indice invariato e nessun conflitto o operazione
Git pendente, nessuna modifica estranea. Rifiutare flag assume-unchanged e
skip-worktree che possono nascondere modifiche. Non fare fetch/pull riparatori.
Un avanzamento remoto richiede boot e handoff nuovi.

## 4. Modifiche ammesse

File esistente: soltanto range autorizzati, risolti sulla stessa preimage.
Marker iniziale incluso, marker finale escluso; entrambi righe esatte e univoche.
Verificare contenuto e hash precedenti, ordine e assenza di sovrapposizioni.
Conservare marker, BOM, EOL, terminatore finale e byte esterni ai range.
Confrontare la postimage completa con l'hash approvato.

File nuovo: soltanto testo Markdown esplicitamente autorizzato e ancora assente.
La creazione non può sostituire un file esistente. Nessuna cancellazione,
rinomina, conversione globale, sintesi o sostituzione completa automatica.
Versione, intestazione e revision log sono range espliciti quando cambiano.
Binari esclusi salvo task separato ed esplicito.

Rifiutare percorsi assoluti/ambigui, ADS, traversal, nomi riservati Windows,
collisioni di maiuscole/minuscole, hardlink, symlink e junction/reparse point.
Policy, esecutore, configurazioni e AGENTS sono protetti: il loro provisioning
o aggiornamento richiede un setup separato, puntuale e revisionato. Non si
autocertifica l'installazione iniziale dell'esecutore tramite lo stesso esecutore.

## 5. DOC-HANDOFF e approvazione

Il formato è `AIOS-DOC-HANDOFF/1.0`, definito in DOC-HANDOFF.schema.json e
DOC-HANDOFF_FORMAT.md. Un solo JSON, UTF-8 senza BOM, chiavi ASCII ordinate,
indentazione due spazi, LF e newline finale. Campi duplicati/sconosciuti,
tipi o operazioni inattesi causano STOP. Un JSON Schema da solo non rileva
chiavi duplicate e non certifica Git, filesystem o coerenza fra hash.

L'approvazione umana è esterna al file ed è legata ai suoi byte esatti,
alle impronte dell'esecutore/dipendenze e della policy. Vietata l'auto-approvazione
con `approved: true`. Qualsiasi riserializzazione richiede nuova impronta e
nuova approvazione. Nessuna espressione, script, callback o shell incorporata.

## 6. Check, Apply, Verify, Review

Check legge tutti i target, valida tutte le precondizioni, calcola tutte le
postimage in memoria, produce diff previsto e metriche; non scrive documenti.
Apply richiede conferma umana sul comando esatto, senza wildcard né permessi
permanenti su prefissi generici PowerShell. Una sola esecuzione attiva e nessun
editor concorrente sui target; ricontrollare percorsi e hash prima di scrivere.

Prima della prima scrittura: recovery esterno alla repo, preimage byte-identiche
verificate e journal con identità/handoff/hash. Sostituzione atomica per singolo
file, nessuna promessa di atomicità globale. Se una scrittura o verifica fallisce,
STOP sulle successive, journal PARTIAL e nessun rollback automatico.

Verify confronta postimage reale e prevista, metriche, struttura e Git finale.
Il report include diff completo, diff --check e diff esplicito dei file nuovi
anche se untracked. HEAD/indice invariati e soli target autorizzati modificati.
Review in ChatGPT esegue CQD documentale/semantico e valuta il risultato.
Hash corretti non certificano la validità delle decisioni.

## 7. CQD

Il profilo della repo dichiara i criteri per header, versione, revision log,
indice quando necessario, sezioni, rimandi e tracciabilità delle decisioni.
Per ogni documento registrare parole, caratteri UTF-16, paragrafi, heading ATX,
byte e SHA-256 di preimage, previsione e risultato reale. Metodo metrico:
`AIOS-TEXT-METRICS/1.0`; le definizioni sono nel formato, non stime generiche.

Le metriche reali devono coincidere con le previste. Una riduzione approvata
all'interno del range è lecita; una perdita esterna causa STOP. Perdita di
contenuto, anchor/rimandi rotti o mancato rispetto del profilo bloccano il
consolidamento. L'integrazione Markdown della pipeline CQD va approvata come
delta del protocollo canonico, senza riscriverne il corpo o generare binari
durante questo task.

## 8. Rollback e Git

Rollback è un comando separato con approvazione umana separata. Verificare
handoff, journal, backup, HEAD/indice e postimage attuale prima di ripristinare.
Una modifica successiva, anche manuale, blocca il rollback. Il ripristino deve
ricostruire i byte originari e lo stato Git iniziale. Un file creato viene
conservato in recovery mediante spostamento approvato, non eliminato.

Nessun reset/clean/force/delete/stash/checkout riparatore automatico.
Nessun git add globale. Commit e push rimangono manuali e richiedono approvazione
umana dopo il diff finale. Su concorrenza o stato PARTIAL preservare le evidenze.

## 9. AGENTS e permessi Codex

AGENTS.md è un adattatore breve alle fonti della repo. Inventariare istruzioni
globali, root e directory dei target, override e fallback effettivamente
configurati. Conflitti non approvati causano STOP. Il contenitore AIOS_GITHUB
non sostituisce un adattatore nella root Git di ogni progetto.

Profilo prudente: sola lettura, autorizzazione umana puntuale alle scritture,
nessuna concessione automatica di accesso completo o installazione di strumenti.
Il file config non dimostra i permessi effettivi: la verifica avviene nella
versione installata di Codex/VS Code prima del pilot. I test del nucleo possono
essere eseguiti nel Terminale Windows e non certificano l'estensione.

## 10. Stato acquisito e gate operativi — storico R1/R2.1

Le sezioni 10–12 conservano lo stato e i vincoli delle transizioni storiche.
Per lo stato operativo successivo si applica la sezione 13, nel suo ambito
esplicito. Nessun risultato storico viene riscritto come prova di una nuova capacità.

Il nucleo e i test isolati sono già acquisiti; non ripeterli per il solo
consolidamento documentale. L'entrypoint R1 ha 13/13 PASS; R2.1 ha 11
nuovi PASS e 2 PASS acquisiti, gate 13/13. Nove file sono installati.

Il pilota reale ha creato soltanto
`05_WORKSPACE/05_AIOS_Codex_Document_Apply_Pilot.md`: Apply e Verify
separato PASS, indice invariato secondo le evidenze native.
Journal finale SHA-256:
`ccf31e993d15129214094cfff2fa55e117a01a0028b5ee9b999998744eba549e`.
Postimage SHA-256:
`1a3a191c96bfa80849f345b2d1064ad160e8f377fb0c8ba9d8790dfce35fa5a8`.
La review delle evidenze ha 51/51 controlli positivi; non è una nuova
esecuzione Windows né una certificazione dei permessi dell'estensione.

L'esecutore R2.1 reale accetta solo AIOSCorePilot, una creazione su
percorso esatto con expected_absent=true. Il file esiste ora: il vecchio
Apply non va rilanciato. Modify_ranges è collaudato in isolamento e non
è abilitato dal bridge reale acquisito. Production_ready resta false.

L'audit IDE del 2026-10-02 rileva root/HEAD attesi e assenza di AGENTS
nel repository. Il TOML contiene read-only/on-request/user, ma due
sessioni dichiarano workspace-write; negli ultimi dati policy e reviewer
non sono visibili. Causa e applicazione effettiva restano da diagnosticare.
La dichiarazione di sola lettura nella chat non sostituisce il sandbox.

La CLI 0.159.0-alpha.12.1, avviata nel terminale VS Code con flag
espliciti, mostra `/status`: directory AIOS_CORE, Permissions Read Only
(Ask for approval), Agents.md <none>. Sessione:
`01a0fe84-53b8-7761-9f07-0ff7741ccc78`.
È un output nativo fornito dall'utente, non una riacquisizione indipendente
né un test di rifiuto delle scritture. Questa evidenza riguarda la CLI:
il percorso della chat grafica resta osservato come workspace-write.
Il launcher proposto avvia la stessa CLI; non modifica i permessi della GUI.
Il task candidato non è installato né collaudato nativamente.

Gate per l'integrazione:
1. Usare il percorso CLI acquisito; il gate read-only della GUI resta aperto.
2. Revisionare e approvare il setup puntuale di fonti, AGENTS e runtime.
3. Adeguare profilo, source/instruction guard e baseline ai nuovi byte.
4. Collaudare in isolamento i soli nuovi comportamenti del bridge.
5. Installare il setup verificato senza stage/commit/push impliciti.
6. Nuova sessione IDE: verificare caricamento fonti e istruzioni.
7. Nuovo handoff sul pilota per range/anchor; Check senza Apply.
8. Approvazione separata, Apply singolo, Verify e review delle evidenze.

LOGOS e le altre root richiedono profili e rollout separati. Il rollback
reale del pilota non è stato eseguito né autorizzato; non dichiararlo PASS.

## 11. Transizione e consolidamento — storico R1

I nuovi documenti e AGENTS cambiano le fonti e le istruzioni vincolate
dal vecchio bridge. Non copiare questo candidato nella repository con
i vecchi profilo/baseline/guard: l'installazione richiede una transizione
revisionata. Non rimuovere controlli né ammettere wildcard per aggirarla.

Conservare integralmente il checkpoint del pilota e le relative evidenze.
La nuova baseline deve includere lo stato finale acquisito; non può
dichiarare assente il pilota o ripulire le modifiche esistenti.
Un nuovo commit modifica HEAD e richiede nuove impronte e preflight.

Per il boot: usare 00_AIOS_BOOT_SEQUENCE.md; per l'elenco Kernel usare
00_AIOS_KERNEL_MANIFEST.md. I runtime devono rinviare alle stesse fonti.
La review e la registrazione su State/Registry richiedono i contenuti
completi precedenti e delta espliciti. AIOS CODEX è il nodo corrente;
non creare un nuovo progetto nel Project Index solo per registrare il nodo.

Questo file resta da installare fino alla ricevuta Verify PASS. Nessun
aggiornamento a Registry, State, Regia o GitHub è implicito nella sua
consegna. Commit, push, rollback e altre root hanno autorizzazioni separate.

## 12. Transizione di provisioning R1 (2026-10-03) — storico

Il setup separato installa solo i dieci target espliciti del candidato,
con metadati di stato finalizzati e task protetto da un launcher esterno.
Preserva byte del pilota, nove file R2.1, configurazioni, HEAD e indice.
La baseline post-setup e il profilo di sola lettura sono esterni e vincolati
al manifest. Source/instruction guard controlla le 19 fonti del capture,
runtime, pilota, configurazioni, CLI e inventario di istruzioni/override
prima di Check, Install, Verify e prima dell'avvio CLI.

Questa transizione sospende deliberatamente il bridge R2.1 reale:
non invocare i suoi modi Check/Apply/Verify/Rollback dopo il provisioning.
Le sue impronte storiche non vengono alterate e le evidenze restano leggibili.
La baseline R1 non e un input R2.1. Il nuovo profilo abilita solo lettura
e non ha scope documentale Apply. L'adeguamento del bridge per i range
resta un gate aperto; richiede revisione, test e approvazione separati.

Il launcher verifica il nuovo snapshot e avvia la CLI con flag espliciti,
ma non certifica i permessi effettivi o il caricamento AGENTS. Sono necessari
/status e una ricevuta delle fonti in una nuova sessione locale.
Il percorso GUI resta da verificare. Production_ready=false.
Su errore parziale: STOP, journal e preimage esterni; nessun rollback,
cleanup, retry o commit/push automatico. Install non e idempotente:
un secondo avvio sulla root gia provisionata viene rifiutato.

## 13. Stato operativo P3 e procedura vigente al 9 ottobre 2026

P1 nativo isolato: 25/25 PASS; P2 nativo isolato: 21/21 PASS, con review
distinte. Setup successivo: undici moduli runtime verificati. Sono moduli
esecutivi, non il totale dei documenti: l'acquisizione P3 ha inventariato
32 Markdown (30 documenti AIOS, AGENTS e README) e 52 file Git visibili.
Questi conteggi descrivono le acquisizioni, non una certificazione live permanente.

I cinque target tracciati aggiornati in P3 sono Kernel Manifest, Local Runtime
Backup and GitHub, Runtime Operating Layer, Project Instructions e Protocol
Index. Apply, Verify e review dei relativi cicli sono chiuse nel proprio
perimetro. Gli ultimi due Run, Instructions e Index, hanno eseguito una sola
Apply, un gate locale, Verify in processo distinto e una raccolta finale.
Questo accorpamento è qualificato per quelle azioni; non certifica una
transazione atomica multi-documento o altre repository.

Per un documento nel percorso già qualificato: preparazione e Check senza
scrittura; review semantica del diff; consenso specifico; poi un Run per Apply,
gate post-Apply, Verify indipendente e raccolta, quando task e binding sono
verificati per quell'azione. Il gate controlla postimage esatta, HEAD, indice
e sole variazioni autorizzate. Nessuna seconda Apply se Verify o collector falliscono.

Il contenuto locale completo è la fonte della preimage anche quando non è
committato. Rileggerlo integralmente e confrontarlo byte per byte prima della
scrittura. Non sostituirlo con HEAD o GitHub. Un delta nuovo richiede acquisizione
e integrazione del contenuto; nessun aggiornamento cieco dei pin.

Nelle letture preliminari usare percorsi assoluti del pacchetto e blocchi
numerati, per esempio fino a 40 righe, senza costruire metodi .NET nel contesto
ConstrainedLanguage. Troncamento o errore di pathname prima dell'invio operativo:
segnalare e completare la lettura corretta in sola lettura, se l'handoff lo
consente; non inventare contenuti, pin o percorsi di esecuzione. Se cambia il
pacchetto o vi è un conflitto di istruzioni, fermare l'operazione dipendente.

Una volta inviato il comando operativo, STOP al primo errore e conservazione
dei parziali: nessun retry, cleanup o correzione automatica. Una ripresa è
un'azione distinta e autorizzata, con verifica dei parziali e identità coerenti.
Se il processo è ancora attivo, attendere la stessa sessione; non rilanciarlo.
Senza exit code o ricevuta conclusiva l'esito è UNKNOWN, non PASS.

Usare launcher e runner verificati con log persistenti, parser e pin sugli
stream condivisi in lettura. Il contesto del processo operativo richiesto è
Windows PowerShell 5.1 Desktop, FullLanguage, RemoteSigned, verificato nel
processo stesso. La shell esterna dello strumento può differire. Una sessione
dichiarata read-only non prova che una richiesta puntuale sia vietata: usare
il meccanismo disponibile solo per il comando e lo scope autorizzati, senza
prefisso permanente, privilegi amministrativi o cambio di policy/LanguageMode.
Una richiesta negata non autorizza un aggiramento.

La raccolta ordinaria contiene manifest, hash, diff completo, receipt, journal,
log e soli contenuti coinvolti. Riutilizzare le review e dipendenze immutate;
audit globali ai checkpoint necessari. Il task deve stampare i pin finali:
non aggiungere comandi GUI di hash dopo un Run concluso soltanto per riepilogarli.

I tre file esistenti non tracciati — questo contratto, AGENTS.md e il manuale
05_WORKSPACE/05_AIOS_Codex_Procedura_Documentale_e_Piano_Operativo.md — richiedono
un provisioning separato con esatto elenco di tre REPLACE, zero CREATE e zero
DELETE. Il bridge documentale ordinario e l'installer degli undici runtime
non autorizzano quel provisioning. Non mettere in stage i file per aggirare
il requisito di tracciamento. Backup, journal, verifica per file e guardie sul
resto della root restano necessari; non si presume atomicità dei tre file.
Alla preparazione del 9 ottobre, il provisioning di questa proposta non è ancora
qualificato; la sua eventuale esecuzione richiede ricevute e review proprie.

Le snapshot delle azioni non sono baseline globali adottate. Commit selettivo
manuale, nuovo HEAD e verifica della prosecuzione restano P4. Profilo esplicito
e primo aggiornamento utile in un'altra repository restano P5. Nessuna Apply,
adozione baseline, scrittura Git o portabilità è implicita in questo contratto.

## Revision log

v0.6 — 2026-10-09 — Proposta coordinata P3: stato dei cinque cicli tracciati,
Run accorpati nel proprio ambito, letture locali, log e riprese; separazione
del provisioning dei tre non tracciati e dei passi P4/P5 ancora aperti.
La preparazione di questa revisione non ne attesta l'installazione.

v0.5 — 2026-10-03 — Provisioning separato e guardia di avvio sul nuovo
snapshot; R2.1 reale sospeso, senza modifiche al runtime acquisito.


v0.4 — 2026-10-02 — Evidenze del pilota acquisite; gap IDE e scope reale
espliciti; transizione di guardie e baseline; nessuna abilitazione implicita.
v0.3 — 2026-10-01 — Contratto candidato dopo architettura approvata
e nucleo R2 isolato; consolidamento canonico ancora da effettuare.

VALIDAZIONE: nodo OK · scope OK · deviazione NO.
