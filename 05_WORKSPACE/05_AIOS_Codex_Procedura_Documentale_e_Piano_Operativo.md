# 05_AIOS_Codex_Procedura_Documentale_e_Piano_Operativo

Documento: procedura documentale ChatGPT / Codex in VS Code e piano operativo consolidato
Versione: v1.2
Data: 2026-10-10
Sistema: AIOS — progetto AIOS_CORE
Tipo: documento operativo di workspace, destinato alla repository
Destinazione: `05_WORKSPACE/05_AIOS_Codex_Procedura_Documentale_e_Piano_Operativo.md`
Stato del file: v1.1 locale tracciata e committata; proposta v1.2 subordinata a Check, review, consenso e Apply/Verify
Stato della procedura: P3 chiuso nel proprio scope; compatibilità guard e file locali esclusi verificata sul nuovo HEAD; P4 in chiusura documentale; portabilità P5/P6 aperta
Anchor: #DOC.aios.codex.procedura_documentale.piano_consolidato

## Indice

1. Scopo, autorità e regole di aggiornamento
2. Decisioni consolidate e obiettivo operativo
3. Stato storico acquisito e aggiornamento corrente 3.1
4. Procedura del primo ciclo — storico del 5 ottobre
5. Procedura ordinaria e controlli da conservare
6. Comando universale conversazionale
7. Contratto del pacchetto per documento
8. Snapshot, approvazioni e continuità dopo commit
9. Documenti pendenti e riallineamento
10. Piano operativo consolidato e calendario obiettivo
11. Verifiche necessarie e criteri di chiusura
12. Sviluppi futuri e condizioni di riapertura
13. Conservazione, dipendenze e archivio di ripartenza
14. Registro delle prove principali — storico del primo ciclo
15. STP a tre livelli della decisione
16. Checkpoint, switch e regole di continuità
17. Registro dei passi e dei problemi risolti
18. CQD, fonti e version history

## 1. Scopo, autorità e regole di aggiornamento

Questo documento è il punto d'ingresso stabile per conoscere il flusso documentale, riprendere il suo sviluppo e trovare sorgenti e prove. Distingue il funzionamento acquisito, la capacità da completare e le integrazioni future. Non ricostruisce i documenti precedenti mediante sintesi e non modifica la Regia, il Registry o i protocolli canonici.

La destinazione è la root Git `C:\AIOS_GITHUB\AIOS_CORE`, nell'area `05_WORKSPACE`. Il nome resta stabile; le revisioni cambiano nel contenuto e nella history. Il file omonimo è ora tracciato: questa revisione usa il bridge documentale ordinario, modify_ranges sulla preimage locale esatta. Il precedente provisioning dei tre file non tracciati è storico e concluso nel suo scope. Questo file non viene aggiunto al Kernel come nuova dipendenza obbligatoria di tutte le sessioni AIOS.

Il documento governa la ripartenza di questo nodo, ma non sostituisce il codice, i contratti, le prove native, i backup e le fonti della repository. Un risultato operativo richiede la relativa evidenza. Le copie dei protocolli incluse nel pacchetto sono fonti acquisite dello snapshot precedente, non una nuova lettura live della root.

Gerarchia di stato applicabile: REGIA > STATE > REGISTRY. Il recupero e aggiornamento della Regia AIOS sono esplicitamente rinviati dall'utente. Il checkpoint di questo nodo consente di proseguire nel perimetro autorizzato senza dichiarare un riallineamento generale della Regia. Divergenze nuove e materialmente rilevanti si segnalano prima dell'azione dipendente.

Alla fine di ogni micro-sessione aggiornare le sole sezioni cambiate, il registro dei passi e la history; conservare i risultati precedenti. Collegare ogni PASS, FAIL o STOP al suo report o archivio. Un checkpoint esterno mantiene continuità fino alla successiva integrazione documentale: non richiede un commit a ogni scambio di chat.

## 2. Decisioni consolidate e obiettivo operativo

L'obiettivo è ridurre operazioni meccaniche, lasciando tempo allo sviluppo di LOGOS, Retool e successivamente ASPRI e Adexima. Non è costruire preventivamente un prodotto universale con tutte le automazioni possibili.

Decisioni storiche confermate nella sessione del 5 ottobre 2026, da leggere insieme agli aggiornamenti operativi della sezione 3.1:

- Analisi, decisioni, contenuti ed esiti di sviluppo restano in ChatGPT.
- L'avvio locale avviene nella normale chat Codex in VS Code; la CLI diagnostica non diventa il percorso ordinario.
- ChatGPT consegna un pacchetto per documento. Codex esegue un documento alla volta e non reinterpreta liberamente il contenuto approvato.
- L'utente estrae lo ZIP nella cartella omonima sotto `C:\AIOS_MIGRAZIONE`, trova `HANDOFF_GUI.txt` al primo livello e ne usa le istruzioni.
- Check, backup, controlli, Apply autorizzata, Verify e diff sono compiti dell'esecutore; l'utente svolge la review del risultato e usa il pulsante Commit di VS Code.
- Riallineamento documentale e preparazione dei commit pendenti sono indispensabili.
- Il motore deve preparare la futura configurazione per progetto; installer universale e uso delle repository private vengono attivati successivamente, prima dell'effettivo bisogno.
- Transazioni multi-documento, commit automatico e perfezionamenti dell'infrastruttura non sono prerequisiti dell'uso ordinario.
- `98_PROJECT_Anchor_System.md` appartiene al template: non è una fonte della root AIOS da acquisire ora. Per gli anchor AIOS vale il protocollo della root.

La parola «minimo» nell'archivio precedente indica il perimetro immediato di sviluppo. Non autorizza a eliminare storia, controlli fondamentali, prove o dipendenze di ricostruzione.

## 3. Stato reale acquisito e limiti — snapshot storico del 5 ottobre

| Elemento | Stato al checkpoint acquisito |
| --- | --- |
| Setup R2.2 release v0.3 | Install e Verify reali PASS, undici runtime verificati |
| Primo Check documentale reale | PASS_ENTRYPOINT_CHECK_ONLY |
| Primo aggiornamento ufficiale | Apply e Verify separata PASS; stato finale APPLIED |
| Target aggiornato | `00_SYSTEM/00_AIOS_Local_Runtime_Backup_and_GitHub.md` |
| Readiness dopo Apply | v02 PASS_POST_APPLY_RESUME_READINESS_ONLY |
| Seconda transazione documentale | Non eseguita e non certificata |
| Target diversi nel percorso reale | Non abilitati dal runtime acquisito |
| Creazione di nuovi Markdown nel percorso reale corrente | Non abilitata |
| Uso dopo nuovo commit | Da completare e verificare |
| LOGOS | Nessun intervento eseguito con questa procedura |
| Baseline adottata | false |
| Production ready | false |

Nel codice acquisito `ProductionScope.Adapter.ps1` root, repository, target e HEAD sono fissati. Il percorso reale ammette esattamente un file già esistente, operazione `modify_ranges`, senza directory nuove. La presenza di `create_text` nel nucleo/schema non ne certifica l'abilitazione nel bridge reale.

Root: `C:\AIOS_GITHUB\AIOS_CORE`; branch acquisito: `main`.
HEAD acquisito: `9483009e4e9a6bc547a256e7b6a70775731e8547`.
Indice acquisito SHA-256: `76a301620fecb6e2bd7d9d14e50f06ed6cf01d90d072f878cc342492149ce86b`.
Questi valori descrivono lo snapshot acquisito, non uno stato live dopo nuove modifiche.

I permessi GUI sono stati dichiarati read-only nelle evidenze. Versione attiva dell'estensione, enforcement generale, reviewer e origine tecnica delle approvazioni non risultano integralmente attestati. L'utente ha confermato personalmente una propria approvazione osservata. Tale dichiarazione non equivale a una certificazione universale del sandbox o di ogni approvazione futura.

L'ultima readiness osserva Desktop 5.1.26100.8655, FullLanguage, PID 22584. Non estende questo dato alle Apply/Verify precedenti, i cui host/PID non sono tutti esposti. Il semplice profilo TOML non dimostra i permessi della sessione.

## 3.1 Stato corrente acquisito al 10 ottobre 2026

Le sezioni 3 e 4 conservano il primo ciclo. P1 ha 25/25 PASS nativi isolati e P2 21/21, con review distinte. Gli undici file runtime non sono il numero dei documenti: l'acquisizione P3 aveva contato 32 Markdown, 52 file Git visibili e 24 dirty.

| Blocco | Stato acquisito | Residuo |
| --- | --- | --- |
| P1/P2 | Review concluse nel proprio ambito | Riutilizzare qualificazioni immutate |
| P3, cinque tracciati | Kernel, Backup/GitHub, Runtime v1.6, Instructions v3.2 e Index v1.4: cicli chiusi | Conservare byte locali e prove |
| P3, tre file allora non tracciati | Provisioning V04: tre REPLACE, Verify indipendente e raccolta PASS | Contratto, AGENTS e manuale ora tracciati; nessuna nuova installazione implicita |
| P4, primo commit | Commit selettivo di 22 file: 5fdc73a98f5a83d031aa3fa3ede5f74dc9276306; push manuale riferito dall'utente | I due file locali sono esclusi tramite .git/info/exclude |
| P4, guard installato | Nove casi guard riutilizzati; sei casi della release tracciata PASS; Plan, tre REPLACE runtime, Verify indipendente e attivazione PASS | Nessuna estensione automatica ad altre chiavi o repo |
| P4, nuovo commit | HEAD e riferimento locale origin/main e022b4d2dcb7dc2c15f502b240608aa2293934d4; working copy pulita, nessuno staged nel precontrollo storico | Il successivo rilascio ha introdotto quattro runtime modificati e verificati, ancora da committare |
| P4, file locali esclusi | Dieci casi isolati PASS; sei casi setup riutilizzati; Plan/Install di quattro runtime e Verify indipendente PASS | Config e tasks restano locali; altri pathname ignorati o variazioni concorrenti restano rifiutati |
| P4, Check manuale precedente | Ripresa V02: Check e raccolta PASS, 46 secondi, nessuna scrittura; proposta precedente SHA-256 32a3729ca084f36ed1c07a2678d59413e6c9135fa4d2ca29ba2f1c59fc745636 | Questa proposta aggiorna receipt e stato; richiede un nuovo Check del proprio diff e consenso prima dell'Apply |
| P5/P6 | Aperti | Profilo di un'altra repo, primo uso documentale utile e chiusura misurata |

Il push è stato eseguito manualmente dall'utente. Il precontrollo osserva il riferimento locale origin/main: non è un'interrogazione live del server. Il nuovo Run riacquisisce l'indice corrente e lo conserva durante l'operazione; il vecchio hash dell'indice resta storico e non viene imposto dopo il commit.

La release guard ammette service_tier = "priority" nel ruolo User, secondo il controllo semantico qualificato. La configurazione Project resta soggetta al proprio controllo. Le configurazioni vengono acquisite e conservate durante ogni singolo Run; un cambiamento operativo consentito tra Run non autorizza variazioni concorrenti durante l'azione.

Receipt VERIFIED precedente della release guard: C:\AIOS_MIGRAZIONE\AIOS_R22_RELEASE_SETUP\f4862a1d888043409e681b794e8846da\setup_receipt.json; SHA-256 3080846e9f8f127dae2a4d79ad483fd9498b2e84827b5d04d7a9b0df9f223a03. Report storico: C:\AIOS_MIGRAZIONE\AIOS_R22_RELEASE_SETUP\b5b3a1745f654904b45446051f9695b7\REPORT.json; SHA-256 f06c5ebc19f07e17a56aa187a1f2c593faca2d9ee642636899785ccc8f72c1b2. Entrambi restano conservati.

Receipt VERIFIED corrente dopo il rilascio di Transaction.Core.ps1, ProductionScope.Adapter.ps1 e dei due entrypoint: C:\AIOS_MIGRAZIONE\AIOS_R22_RELEASE_SETUP\4ae095a490934f8dafae271753fe246e\setup_receipt.json; SHA-256 4d2ae82ddc1402187a858c96e442227e328d21aea4c465aee27f2abd92e5418e. Il Check successivo con i due file locali esclusi è PASS; non estende la capacità ad altre repository.

Prove del Check precedente: check_report.json in C:\AIOS_MIGRAZIONE\CODEX_DOCUMENT_APPLY_EVIDENCE\f168281134c54c2ca115f27d433138af\check_3865f06358594f92b40273b8abf202f1, SHA-256 57dc046d9f3493d8d8b4b2d2e7d7109d6911c436d0535148a6734ca0a955dfcc. ZIP compatto C:\AIOS_MIGRAZIONE\AIOS_P4_MANUAL_CHECK_RESUME_EVIDENZE\2fedb84b6bd84ffd832b2e6529c6757c.zip, SHA-256 39893216b70a668a7109b7eb5002164a97f5df62c84a302d0cd6a337969623b3. Il PASS riguarda i byte della proposta precedente; non sostituisce il Check della presente revisione né autorizza l'Apply.

Instructions e Index hanno completato Run accorpati di 79 secondi ciascuno; la release guard V02 ha impiegato circa 35 secondi nel launcher. Sono durate meccaniche di istanze specifiche, distinte da review e conversazione. Non qualificano una transazione multi-documento, un installer universale o la portabilità LOGOS. Baseline non adottata; production_ready=false.

Riferimento storico post-Index: SOURCE_SNAPSHOT.json, SHA-256 `702c6cc0988032edf7876cfcf35c804914bb91d7ccec486fc300f3624bc826c6`; HEAD `9483009e4e9a6bc547a256e7b6a70775731e8547`, indice `76a301620fecb6e2bd7d9d14e50f06ed6cf01d90d072f878cc342492149ce86b`. È uno snapshot della precedente azione, non il binding del nuovo Check né una baseline adottata.

Le prove dei nuovi cicli prevalgono per il relativo stato operativo; i resoconti del primo ciclo restano storici. Il pilota R2.1 resta KEEP. Gli hash dei delta preesistenti CQD e Registry non costituiscono da soli approvazione semantica; il commit selettivo conserva quei contenuti.

## 4. Procedura acquisita nel primo ciclo — storico del 5 ottobre

Il setup reale è stato pianificato in lettura, approvato, installato e verificato con comandi separati. Il piano prevedeva sei REPLACE, due CREATE e tre KEEP del runtime. Non autorizzava Apply documentali né Git write.

Sul primo documento ufficiale sono stati acquisiti input immutabili, Check, diff previsto, decisione specifica, una Apply e una Verify separata. La review ha confrontato preimage, postimage, delta, journal, backup e stato Git. Il file è passato alla versione contenuto v1.2, con tre range approvati e preservazione dei byte esterni. HEAD e indice sono rimasti invariati.

La review del primo ciclo ha 470 controlli statici positivi sui materiali ricevuti: non è un nuovo collaudo Windows. La review della readiness v02 ha 39 controlli statici positivi. Le due catture della readiness corrispondono alla baseline candidata post-Apply e conservano i 23 file osservati. Ciò certifica una ripresa in lettura, non una seconda transazione né l'adozione della candidata.

La fase diagnostica ha osservato ConstrainedLanguage in un contesto e FullLanguage nel comando specificamente approvato. Non è stata modificata una policy o il LanguageMode per aggirare un blocco. Il modo di consegna manuale dei pacchetti è stato ripristinato e va mantenuto.

I PASS isolati del nucleo e dei bridge sono prove dei componenti. Non dichiarano abilitati target arbitrari, nuove repository, futuri HEAD o nuove versioni del plugin.

## 5. Procedura ordinaria e controlli da conservare

1. Identificare progetto, documenti interessati e capacità dell'esecutore già verificate. Riutilizzare fonti e prove immutate; acquisire soltanto contenuti completi o metadati realmente mancanti.
2. Leggere i target completi della working copy sul PC e vincolare hash e snapshot. Le modifiche non committate sono contenuto da preservare, non un errore da ripulire o sostituire con GitHub.
3. Preparare postimage, diff completo, range, metriche e pin. Più proposte possono stare in un pacchetto coordinato; ogni scrittura conserva scope e decisione propri. Per i tre non tracciati usare un provisioning separato, non il bridge ordinario.
4. Consegnare un messaggio breve che richiama HANDOFF_GUI.txt. Il pacchetto dichiara una sola cartella di estrazione e pathname assoluti; il launcher è un file diretto verificato, non un comando riscritto dalla GUI.
5. Completare le letture richieste prima delle operazioni dipendenti. Quando l'utente autorizza una deroga puntuale, la GUI legge handoff, checkpoint, review e diff; launcher/task nativi leggono integralmente target, fonti e materiali tecnici, con pin, parser e registrazione separata. La deroga deve essere esplicita nel messaggio e limitata al pacchetto: questo manuale non sostituisce da solo AGENTS. Le eventuali letture GUI usano UTF-8 e blocchi consecutivi fino a 40 righe con Get-Content/Select-Object; niente metodi .NET nel contesto vincolato. Blocchi mancanti o troncati si completano in lettura secondo l'handoff, senza un nuovo Run.
6. Osservare il processo effettivo e usare soltanto l'approvazione puntuale prevista. Read-only dichiarato non equivale a richiesta di escalation vietata; un rifiuto non si aggira. Nessuna modifica di policy, LanguageMode o profili.
7. Preparazione e Check senza scrittura; review semantica del diff e consenso specifico prima di Apply. La richiesta iniziale di preparazione non autorizza l'aggiornamento dei documenti.
8. Nel percorso qualificato, un solo Run può eseguire backup/journal, Apply singola, controllo locale post-Apply, Verify in processo distinto e raccolta finale. Prima della scrittura rileggere integralmente il target e confrontare byte per byte la preimage. HEAD, indice e file estranei restano invarianti.
9. Dopo l'invio operativo, STOP al primo errore senza retry, cleanup o correzioni automatiche. Conservare parziali e log persistenti. Attendere la stessa sessione se attiva; non rilanciare un processo di esito UNKNOWN. Una ripresa autorizzata verifica parziali e non ripete fasi già PASS.
10. Raccogliere una sola evidenza compatta: manifest, hash, diff completo, receipt, journal, log e file coinvolti. Audit globale solo ai checkpoint che lo richiedono. Il task stampa i pin finali; nessun comando hash GUI supplementare soltanto per riepilogarli. Un fallimento di collector non annulla una Apply né permette di ripeterla.
11. Dopo review, classificare i pendenti ed eseguire commit e push selettivi dall'interfaccia VS Code. Il commit salva la storia locale; il push pubblica il commit remoto. Una lista modifiche vuota non prova la pubblicazione su GitHub. I file /.codex/config.toml e /.vscode/tasks.json restano locali tramite .git/info/exclude; non si modifica il .gitignore condiviso soltanto per queste preferenze. Nessuno staging globale o push automatico.
12. Acquisire il nuovo HEAD e verificare la prosecuzione senza assumere compatibili vecchi snapshot o decisioni. Altra repo: prima profilo esplicito, fonti locali, qualificazione limitata e primo uso utile; nessuna operazione DB implicita.

Il percorso ordinario mantiene due passaggi utente: preparazione/Check con review del diff; dopo consenso specifico, Apply con gate, Verify in processo distinto e raccolta unica. L'accorpamento è acquisito nei cicli Instructions e Index; il provisioning dei tre file e la successiva release guard hanno qualificazioni proprie concluse. Non ripetere suite immutate a ogni documento: verificare il nuovo target e i suoi binding correnti. Per ogni nodo completato: percentuale indicativa, stato attuale, prossimo nodo e residuo. Le percentuali non sostituiscono i criteri di chiusura P0–P6.

## 6. Comando universale conversazionale

Forma breve adottata:

```text
Avvia la procedura documentale per [PROGETTO].
Prepara proposte coordinate per i documenti interessati dalle decisioni e dagli esiti verificati di questa sessione.
Usa il piano AIOS Codex: input locali completi, Check/review prima del consenso; Run accorpato soltanto nel percorso qualificato; provisioning e commit manuale separati.
Segnala prima gli input completi o lo snapshot mancanti e le capacità non ancora abilitate. Non ampliare il perimetro e non ricostruire file da versioni parziali.
```

Se il progetto è già identificato nella sessione, basta «Avvia la procedura documentale». La formula è una convenzione documentata di ChatGPT, non una slash command ufficiale del plugin, uno script installato o un trigger garantito da memoria non disponibile. Nelle nuove sessioni questo documento deve essere disponibile.

«Universale» significa richiesta indipendente dal nome del progetto. L'esecuzione resta vincolata a root, profilo, fonti e capacità reali del progetto. Nella versione corrente soltanto la corsia acquisita AIOS è attiva: il comando non può estenderla da solo a LOGOS o Adexima.

Se mancano le preimage, si avvia soltanto la preparazione/raccolta necessaria, non Apply. Se non ci sono aggiornamenti utili, l'esito è nessun pacchetto necessario, non un aggiornamento artificiale.

## 7. Contratto del pacchetto per documento

Il formato per documento è stato usato nei cinque cicli P3 tracciati. Un pacchetto coordinato può raccogliere più proposte, senza dichiarare una nuova transazione multi-documento. Il piano storico dei tre non tracciati è stato eseguito tramite provisioning separato. Il manuale ora tracciato può usare un DOC-HANDOFF ordinario per una nuova proposta e un nuovo Check.

| Contenuto | Funzione |
| --- | --- |
| HANDOFF_GUI.txt al primo livello | Root bersaglio, ordine delle operazioni e comandi esatti della versione disponibile |
| Manifest | File, versioni e SHA-256; dipendenze richieste e assenze intenzionali |
| Handoff dichiarativo | Un target, operazione autorizzata, pre/post hash, contenuti/range e metriche |
| Policy/profilo e binding dello snapshot | Identità del progetto, percorsi consentiti, fonti e stato Git atteso |
| Contenuto previsto e diff | Review senza ricostruzione libera da parte di Codex |
| Metadati di esecuzione | Identità nuova, riferimenti alle approvazioni, recovery e prove esterne |

Il generatore verifica schema, duplicati, nomi di file, copertura del manifest e dipendenze del launcher. Il difetto storico della funzione mancante nella readiness deve diventare un controllo di assemblaggio riutilizzabile.

Un pacchetto con un'unica directory usa uno ZIP senza cartella esterna: estrazione in C:\AIOS_MIGRAZIONE\<nome-pacchetto>, HANDOFF_GUI.txt al primo livello. Se contiene più directory funzionali, l'handoff indica esplicitamente l'estrazione in C:\AIOS_MIGRAZIONE. Non combinare le due convenzioni né aggiungere un secondo livello omonimo. Verificare il pathname dell'handoff prima dell'avvio; una copia correttiva autorizzata riguarda soltanto file assenti e conserva gli originali. I pacchetti non contengono credenziali e non incorporano comandi nei contenuti documentali. Un hash SHA-256 verifica integrità rispetto a un valore acquisito, non firma digitalmente l'autore né dimostra da solo l'approvazione umana.

Gli ZIP di installazione/versione, gli ZIP di lavoro e gli ZIP delle prove hanno ruoli distinti. Un documento successivo riutilizza il motore installato verificato. Una sua modifica richiede provisioning separato.

## 8. Snapshot, approvazioni e continuità dopo commit

La semplificazione non consiste nel disabilitare i controlli sull'HEAD o nell'accettare qualsiasi directory. Il target e l'HEAD devono provenire da un nuovo contesto verificato e dal pacchetto approvato. Durante la singola transazione HEAD, indice e file estranei restano invarianti.

Il precontrollo del 10 ottobre osserva una working tree pulita. Quando esistono modifiche preesistenti, non vanno ripulite automaticamente: lo snapshot le identifica e il motore le preserva. Il commit dell'utente avviene tra transazioni; il successivo Check usa un nuovo contesto vincolato.

Le baseline candidate storiche non sono state adottate. La prosecuzione sul nuovo commit acquisisce un riferimento dell'azione con HEAD, indice, fonti e contenuti locali correnti; non converte una candidata in autorizzazione. Il Check utile sul nuovo HEAD con la compatibilità dei file esclusi è attestato dal resoconto nativo e dai pin indicati in sezione 3.1. I nuovi diff mantengono Check e consenso propri; non si riusa quel PASS per byte diversi. Vecchie request e claim rimangono prove storiche e non vengono cancellate per riusarle.

Se i pacchetti sono generati insieme, l'ordine deve essere dichiarato. I contenuti possono essere predisposti nella stessa sessione, ma i binding tecnici dei successivi devono corrispondere allo stato effettivo consentito. Modifiche manuali concorrenti, nuove fonti o commit intermedi richiedono ricontrollo; non è obbligatorio rigenerare tutti i contenuti immutati.

Configurazioni, AGENTS e runtime non si aggiornano tramite un normale Apply documentale. L'allineamento di tali file usa un piano di provisioning separato. Contratto, AGENTS e manuale sono stati sostituiti dal provisioning separato e poi committati. Un futuro aggiornamento di AGENTS/config/runtime richiede ancora il percorso specifico; questo manuale tracciato rientra invece nel bridge documentale ordinario, con un solo target e range approvati. Il vecchio installer accetta soltanto gli undici runtime: non lo si estende tramite un manifest artificiale. Non mettere in stage i tre file per aggirare il bridge. Nessuna nuova CREATE, reinstallazione runtime o atomicità globale dei tre file è implicita. Nessuna consegna equivale già a scrittura nella root.

## 9. Documenti pendenti e riallineamento

L'elenco seguente è storico: snapshot del 5 ottobre (23 dirty), poi 24 includendo il manuale. P3 e il commit selettivo dei 22 file sono conclusi nel proprio scope. Dopo il commit della release guard, il precontrollo del 10 ottobre osserva working copy pulita e nessuno staged. I due file locali esclusi non sono pendenti da pubblicare. Dopo quel precontrollo sono stati sostituiti e verificati quattro runtime; restano modifiche locali dichiarate, da preservare e committare selettivamente dopo la chiusura documentale. Non ricreare lo stato storico né applicare di nuovo i suoi aggiornamenti.

La cattura storica del 5 ottobre osservava 7 tracked modificati e 16 untracked. Non è uno status live dopo il salvataggio dell'archivio da parte dell'utente. Il nuovo documento e un eventuale archivio dentro una root Git potrebbero cambiare l'elenco; ricatturarlo prima di preparare i commit.

Tracked modificati:

- `00_SYSTEM/00_AIOS_KERNEL_MANIFEST.md`
- `00_SYSTEM/00_AIOS_Local_Runtime_Backup_and_GitHub.md`
- `00_SYSTEM/00_AIOS_Runtime_Operating_Layer.md`
- `00_SYSTEM/AIOS_PROJECT_INSTRUCTIONS_RUNTIME_v3.md`
- `02_PROTOCOLS/02_AIOS_CQD_Protocol.md`
- `02_PROTOCOLS/02_AIOS_PROTOCOL_INDEX.md`
- `03_REGISTRY/AIOS_EVENT_REGISTRY_v1_1.md`

Untracked acquisiti:

- `.codex/config.toml`
- `.vscode/tasks.json`
- `AGENTS.md`
- `02_PROTOCOLS/02_AIOS_Codex_Safe_Document_Apply.md`
- `05_WORKSPACE/05_AIOS_Codex_Document_Apply_Pilot.md`
- undici file sotto `tools/codex`: Invoke-AIOSDocumentApply.ps1, Invoke-AIOSApprovedAction.ps1, ProductionScope.Adapter.ps1, Transaction.Core.ps1, Recovery.Core.ps1, DocumentApply.Adapter.ps1, DocumentSafety.Core.ps1, Handoff.Core.ps1, StrictJson.cs, DOC-HANDOFF.schema.json, ApprovalProtocol.Core.ps1.

Classificare ciascun delta come coerente e pronto, da aggiornare, oppure da lasciare pendente. La verifica degli hash dei 23 file non certifica che ogni vecchia modifica sia semanticamente approvata. Non modificare il Registry per registrare automaticamente la nuova decisione; eventuali vecchi delta del Registry richiedono review propria. La Regia non viene riaperta come prerequisito.

Allineare le istruzioni storiche R1/R2.1 e i riferimenti a CLI, target unico e gate quando i comportamenti cambiano davvero. Non riscrivere i report storici in modo che dichiarino retroattivamente una capacità nuova.

Commit suggeriti per scopo coerente, se i diff lo consentono: runtime/configurazione; contratti e documentazione; altre modifiche precedenti approvate. Il raggruppamento finale dipende dalla review live, non è già deciso. L'utente usa staging selettivo e Commit; nessun `git add` globale, commit o push automatico.

## 10. Piano operativo consolidato e calendario obiettivo

Stato al 10 ottobre: P1/P2 qualificati nel proprio ambito; P3 concluso; compatibilità operativa P4 verificata sul commit e022b4d; chiusura documentale e commit dei nuovi delta pendenti; P5/P6 aperti. Il calendario seguente conserva obiettivi e criteri, non è una promessa di ore residue.

La settimana obiettivo termina domenica 11 ottobre 2026, Europe/Paris. Il calendario è un obiettivo operativo e non una garanzia di durata. Riguarda il flusso documentale essenziale, non la chiusura dell'intero sviluppo LOGOS/Retool/ASPRI/Adexima. La precedente stima fino a 30 ore includeva un perimetro più ampio e non è una soglia obbligatoria.

| Passo | Lavoro | Dipendenza | Prova di completamento |
| --- | --- | --- | --- |
| P0 — Ripresa puntuale | Leggere documento, checkpoint e materiale acquisito; ricatturare solo stato/input Windows necessari, localizzare l'archivio tools | Nuova sessione | Elenco corrente e preimage sufficienti; nessuna scrittura |
| P1 — Ripetibilità | Target autorizzato per operazione, nuove transazioni e binding dello snapshot/HEAD corrente | P0 | Nuovi comportamenti verificati; Apply successiva utile, file estranei invariati |
| P2 — Pacchetto stabile | Riutilizzare il motore; generatore e handoff per documento con controllo delle dipendenze | P1; preparazione in parallelo dove indipendente | Pacchetto completo prodotto secondo formato stabile |
| P3 — Allineamento | Integrare questo documento, aggiornare fonti/istruzioni pertinenti, rivedere tutti i pendenti | P1/P2 per il percorso prescelto; strumenti in setup separato | Diff approvati, elenco commit-ready, dipendenze coerenti |
| P4 — Commit e prosecuzione | Commit manuale e nuovo Check sullo stato successivo | P3 e continuità HEAD verificabile | Nuovo HEAD acquisito e Check valido senza modificare il motore per quel commit |
| P5 — LOGOS documentale | Profilo esplicito con root/fonti LOGOS; riuso del motore e primo aggiornamento utile | P1–P4 conclusi per AIOS | Apply/Verify/review LOGOS documentali, nessuna operazione DB implicita |
| P6 — Chiusura | Misurare passaggi meccanici, aggiornare registro/checkpoint e congelare release utilizzabile | Passi completati | Capacità effettive dichiarate; ritorno allo sviluppo operativo |

Finestre obiettivo: 6–7 ottobre P0/P1 e preparazione P2; 8–9 ottobre P2/P3/P4; 10–11 ottobre P5 se AIOS è pronto e P6. Sono finestre da verificare sul lavoro reale e sulla disponibilità dell'utente. Se P1 è più complesso del previsto, rivedere il residuo venerdì 9; non aggiungere funzionalità opzionali né dichiarare un PASS per rispettare la data. Se il profilo LOGOS non è pronto, chiudere un checkpoint AIOS preciso e lasciare LOGOS come prossimo passo distinto.

La creazione generica di documenti è rinviata al primo bisogno; l’aggiornamento di questo documento specifico, già esistente, è compreso nel provisioning P3 e richiede una modalità esplicita, coerente con i controlli. Non allargare automaticamente il bridge a ogni operazione dello schema.

## 11. Verifiche necessarie e criteri di chiusura

Conservare preimage, contenuti approvati, diff completo, metriche e postimage; guardie su root/origin, percorso e fonti; indice e modifiche estranee; backup esterni e journal; autorizzazione puntuale; Verify separata; stop e recovery su stato PARTIAL.

Le prove nuove devono verificare rischi reali delle modifiche: target diverso autorizzato; target fuori perimetro respinto; seconda transazione con identità nuova; approvazione vecchia respinta; snapshot mutato respinto; funzionamento dopo commit; configurazione di una root diversa quando si attiva LOGOS. Riutilizzare le prove precedenti quando sorgente e comportamento restano applicabili. Non promettere zero regressioni se si modifica un componente condiviso.

Chiusura AIOS: seconda operazione utile riuscita, pacchetto ripetibile, documento e istruzioni allineati, review dei pendenti e commit manuali desiderati dall'utente, nuova ripartenza dopo commit. Chiusura estensione LOGOS: primo aggiornamento documentale utile con profilo e prove propri. Le dichiarazioni di readiness devono avere questo ambito, non attestare capacità ancora rinviate.

Registrare per l'uso ordinario numero di azioni utente e durata dei passaggi meccanici, esclusa la review semantica. Se l'esecuzione singola è comoda, non aprire il multi-documento. Se il numero di documenti rende onerosa la ripetizione, valutare prima un avvio sequenziale di operazioni indipendenti.

## 12. Sviluppi futuri e condizioni di riapertura

| ID | Integrazione | Materiale da conservare | Quando riaprire |
| --- | --- | --- | --- |
| F01 | Creazione di un nuovo Markdown | Schema create_text, controlli di assenza, directory e CQD, prove precedenti del pilota con scope storico | Prima del primo nuovo documento che richiede il percorso ordinario |
| F02 | Più operazioni con un avvio | Formato per documento, sequenza, binding dei successivi snapshot, gestione errori | Se l'uso reale dimostra troppa ripetizione |
| F03 | Transazione multi-documento | Nucleo, recovery e journal; limiti di atomicità per file | Solo con beneficio misurato; richiede review dedicata |
| F04 | Installer universale / più PC | Runtime versionato, setup, manifest, prerequisiti, profili e percorsi configurabili | Dopo stabilizzazione operativa o prima del nuovo PC |
| F05 | Motore centrale condiviso | Separazione motore/profili; controllo versioni, trust e dipendenze per root | Solo se le copie locali creano manutenzione concreta |
| F06 | Repo private Adexima/ASPRI | Modello profilo, identità origin/root, controlli di accesso, istruzioni senza credenziali | Prima della ripresa effettiva del progetto, non ora |
| F07 | Archivio stabile e cleanup | Mappa delle dipendenze vive e chiuse, recovery/claim, inventario e backup | Quando si pianifica la pulizia; nessuna cancellazione automatica |
| F08 | Compatibilità aggiornamenti | Versioni osservate, prerequisiti, check di avvio/permessi e Check senza scrittura | Dopo aggiornamenti rilevanti o errore concreto |
| F09 | Commit assistito/automatico | Regole di staging selettivo e review; distinzione commit/push | Solo se l'utente cambia la scelta manuale |
| F10 | Eliminazione ZIP / altri canali | Specifica del handoff e input immutabili | Se il trasporto ZIP diventa un ostacolo reale |

Le fondamenta immediate sono configurazione esplicita per progetto e versionamento del motore. Non progettare preventivamente ogni ambiente. La repository privata non deve essere resa pubblica e le credenziali non vanno nei pacchetti; ciò non costituisce una certificazione di privacy di ogni dato inviato ai servizi di chat. L'utente decide quali contenuti condividere.

## 13. Conservazione, dipendenze e archivio di ripartenza

Archivio consolidato già creato: `AIOS_CODEX_RESTART_MINIMO_V01_20261005.zip`.
SHA-256: `cfc3035ee3fa7c66cd584184888475c4178e33d222733ca31fb0d8fedada6e2c`.
Dimensione: 43.977.478 byte. Contiene 99 file: 33 ZIP storici, 40 file di evidenze ricevute, sorgenti/metadata della release acquisita, review, checkpoint e inventario/manifest.

L'utente riferisce di averlo salvato nella cartella tools di AIOS_GITHUB. Il percorso completo, la root Git che eventualmente lo contiene e il suo status non sono stati osservati nuovamente. AIOS_GITHUB è un contenitore di repository; non è automaticamente la root AIOS_CORE. Nel passo P0 identificare il percorso, verificarne l'hash e vedere se compare nello status pertinente. Nessuno spostamento, cancellazione, ignore o commit del binario è implicito. Non è necessario committare l'archivio per conservare il documento ufficiale.

Il precedente archivio conserva i materiali disponibili nel workspace, inclusi fallimenti e versioni superate; non è un backup completo della root Windows o di tutti i recovery. Non eseguire i launcher storici soltanto perché sono inclusi. Materiali separati principali: runtime/setup; prove native; contratti e fonti acquisite; handoff; review; checkpoint. Inventario e manifest distinguono i ruoli.

`C:\AIOS_MIGRAZIONE` contiene attualmente ricevute di setup, approvazioni/claim, prove, baseline candidate e recovery referenziati. Non è tutta temporanea. Il runtime è sotto tools/codex della repository, ma dipende anche da percorsi esterni. Conservare questi ultimi fino alla classificazione e alla verifica di eventuali nuovi binding.

Un solo documento di ingresso evita di ricercare nelle chat, ma non elimina le evidenze. Il documento deve puntare agli archivi e ai percorsi necessari con hash e stato. Per ripartire servono documento corrente, checkpoint corrente e archivio di ricostruzione; i file Windows attuali si acquisiscono quando necessari all'operazione.

## 14. Registro delle prove principali — storico del primo ciclo

I seguenti riferimenti identificano materiali acquisiti. Hash integri non dimostrano esecuzioni aggiuntive. Il nuovo pacchetto include anche un registro JSON per evitare trascrizioni manuali nelle sessioni successive.

| ID | Evidenza | Esito / funzione | SHA-256 dello ZIP |
| --- | --- | --- | --- |
| E01 | R22_EVIDENZE_3dcf8887009f41d084bcdb22916adf6a.zip | Nucleo isolato v0.7, 24 PASS | 2e3ae7dab6da7d7ddc6ddbd9ed372b50df0cb40f34ba420cadacb5354d0407c0 |
| E02 | PROFILE_EVIDENZE.zip | Profilo isolato, 15 PASS | 965e636bf92e3e412db9b1b2b4320485aaff0bfdb1eb1e88780a0edc2b057eee |
| E03 | APPROVAL_EVIDENZE.zip | Protocollo approval isolato, 18 PASS | c45ac1f73a9cbeee406e4d16b5e49a3a844e1947d7f3953d390fd7932a840286 |
| E04 | INTEGRATED_EVIDENZE_670fae70e98e43718c26cab500a0d2b3.zip | Bridge integrato isolato, 14 PASS | 0f0b4cb968f4e97345de0362a56da4d1985ffe1606c99dbd1b3422a7483711af |
| E05 | AIOS_R22_DOCUMENT_REVIEW_20261005_7ca2578e6dc042d3a344f7a602ad41b1.zip | Primo ciclo ufficiale reale Apply/Verify e recovery, 71 file | d52bb73f895f442b3c0321f057f53078c24cd5a00238373fbb669f8fb734d288 |
| E06 | 293a41ab79b64d748db87a78903f20f2_EVIDENZE.zip | Readiness successiva v02 PASS | a19a5854ca7e56029b7b721c099d752922876445e7ab540a3d5efe0887f8165f |
| E07 | AIOS_R22_SETUP_NATIVE_EVIDENCE_6d67409f49444ddc974b32f3c7b2b6b1.zip | Setup reale Install/Verify, 42 file | 2cd06765528a74c389def9a6307276f2614acb1807fc95be77df949362547ecf |
| E08 | AIOS_R22_DOCUMENT_CHECK_PROOFS_24432601c13e457d87cc4b18a9a8faf9.zip | Check reale senza scrittura | 766411c3b68436069c1e9274f993bcba004d4a56e5a28434729d0b6a65ded788 |
| E09 | RELEASE_EVIDENZE_22ef01481b1248d1ad013cd935e1fec7.zip | L07–L15 delta release v0.3, 9 PASS; L01–L06 non ripetuti | 2783de90ee72719d01d22449e9a369f09c5fd0ac8fee9fde1b689265973668dc |

Target ufficiale: preimage SHA-256 `e72185300a21702411be24a5d360d919a2d62cc5103480fed9da0fc6d838c69d`; postimage `34c7580fd7b00be321f68620b7e8bd2edec8aa6ac52c050bb5e47f1ef4b93717`.
Journal finale acquisito: `55779fd24de07cadf81caf768e8c703c43c5c5a57f09d913b84dab6979892054`.
Baseline candidata post-Apply: `c2c8b15fb2be597303dd16b4e2ebd98a4971ba49faca19c525390e95e56bf0d8`, non adottata.
Readiness report v02: `ac66bf7275ee1efbdcff8de8ad1158031f620462571d7c3b61b2b974e6882cf7`.

Setup receipt attiva acquisita: `C:\AIOS_MIGRAZIONE\AIOS_R22_RELEASE_SETUP\bb58356ac0304d418e01201881636a8c\setup_receipt.json`; SHA-256 `70d02732e85f1e739695c25e2bfef80e91b83494e30222457b8416f6051d3d40`.
Recovery del primo ciclo: `C:\AIOS_MIGRAZIONE\CODEX_DOCUMENT_APPLY_EVIDENCE\c8ab4cd9519b4cd6a467261e7be5cb21\recovery\transaction_7ca2578e6dc042d3a344f7a602ad41b1`.
Report readiness v02: `C:\AIOS_MIGRAZIONE\AIOS_R22_RESUME_READINESS_PROOFS\293a41ab79b64d748db87a78903f20f2\RESUME_READINESS_REPORT.json`.

## 15. STP a tre livelli della decisione

Fonte: `02_PROTOCOLS/02_AIOS_STP_Protocol.md` v1.0 acquisito. È una valutazione della decisione e non un collaudo tecnico del runtime.

### Livello 1 — Coerenza logica

Un pacchetto per documento e commit manuale sono coerenti con l'obiettivo di ridurre la meccanica. Non richiedono installer universale, batch o repo private immediati. Il termine minimo riguarda lo scope, non l'informazione conservata.

Rischio: interpretare «basta questo file» come assenza di altre dipendenze, o credere che il comando conversazionale abiliti già tutte le funzioni. Correzione: documento come ingresso con riferimenti verificabili; capacità acquisite e future separate; stato aggiornato per ciascun pacchetto. Esito: APPROVATO nella formulazione corretta.

### Livello 2 — Impatto sistemico

Un documento riconoscibile in 05_WORKSPACE evita una nuova Regia parallela e collega procedura, piano e ripartenza. Non sostituisce i protocolli del Kernel, non importa convenzioni del template LOGOS nella root AIOS, e mantiene commit/provisioning distinti dalle scritture documentali.

Rischi: divergenza fra nuovo manuale e AGENTS/contratto storici; un ZIP in una root Git potrebbe modificare lo snapshot; aggiornamenti a fonti protette possono invalidare i pacchetti successivi. Correzione: P0 live, P3 allineamento puntuale e P4 nuovo stato dopo commit. Esito: APPROVATO con questi passi inclusi.

### Livello 3 — Robustezza strategica

Rinviare automazioni senza beneficio dimostrato è sostenibile. Conservare codice, prove e decisioni riduce il rischio di rifare lavoro. Modello di profilo e versioni prepara futuri progetti senza svilupparli tutti ora.

Rischi: scadenza settimanale trasformata in garanzia; manuale enorme che diventa più oneroso del lavoro; conservazione di archivi senza indice o dipendenze vive; cambiamenti del plugin. Correzione: obiettivo entro 11 ottobre con criteri di chiusura, review del residuo il 9 ottobre, aggiornamenti solo dei delta e delle prove, manutenzione mirata. Esito: REVISIONE della promessa «non oltre»; APPROVATO il piano con data obiettivo e stato reale esplicito.

Esito complessivo: APPROVATO nella versione consolidata di questo documento. Non equivale ad autorizzazione di Apply, installazioni, commit o cancellazioni e non certifica già realizzata la procedura ordinaria.

## 16. Checkpoint, switch e regole di continuità

Progetto attivo: AIOS_CORE. Classificazione: integrazione documentale ChatGPT / Codex VS Code. Macroarea: AIOS CODEX DOCUMENT WORKFLOW. Nodo corrente: P4, compatibilità guard e file locali esclusi verificata; quattro runtime sostituiti ancora da committare sul HEAD e022b4d2dcb7dc2c15f502b240608aa2293934d4; proposta finale del manuale v1.2 e relativo Check. Prossimo nodo: review del Check e, solo dopo consenso, Apply/Verify accorpati del manuale. Poi checkpoint AIOS e profilo documentale della seconda repo.

Leggere questo file e il checkpoint; accedere all'archivio precedente quando servono prove o sorgenti. Non assumere di poter leggere percorsi C: da ChatGPT. La nuova sessione inizia in lettura sullo stato Windows necessario e sul delta del nodo corrente; non riapre P1/P2 se il codice e i comportamenti già qualificati restano invariati. Non avvia subito Apply, installer, commit, cleanup o LOGOS.

Documenti attivi: questo piano; checkpoint del nodo; contratto e AGENTS locali aggiornati; fonti AIOS locali; receipt VERIFIED del rilascio corrente indicata in 3.1 e relative review. Le review del primo ciclo e della readiness restano storiche. Le fonti LOGOS/template caricate altrove non sono fonti sostitutive AIOS.

Anchor di ripartenza:

- #DECISION.aios.codex.flusso_singolo_documento
- #DOC.aios.codex.procedura_documentale.piano_consolidato
- #TASK.aios.codex.ripetibilita_snapshot_commit

Lo switch completo è in `SWITCH_NUOVA_SESSIONE.txt` nel pacchetto. Se un allegato non è disponibile alla nuova chat, richiederlo per nome invece di inventarne il contenuto. Il nuovo pacchetto contiene fonti e runtime acquisiti per rendere autonoma l'analisi del primo passo; l'archivio grande contiene storia e prove complete disponibili.

## 17. Registro dei passi e dei problemi risolti

La tabella seguente conserva il registro del 5 ottobre. Per lo stato successivo valgono la sezione 3.1 e le righe aggiuntive del 9 ottobre; le vecchie righe «Aperto» non riaprono fasi concluse.

| Data / passo | Stato | Evidenza / residuo |
| --- | --- | --- |
| Nucleo isolato v0.7 | Acquisito PASS 24/24 | E01; fallimenti v0.3–v0.6 conservati nell'archivio |
| Profilo / approval / integrato | Acquisiti PASS 15/18/14 | E02–E04; non attestano tutte le proprietà GUI |
| Release setup delta | Acquisito PASS L07–L15 | E09; precedenti L01–L06 restano acquisiti distinti |
| Setup reale | Install e Verify PASS | E07, setup receipt VERIFIED |
| Primo documento ufficiale | Apply/Verify/review positive | E05, target unico |
| Consegna / LanguageMode | Formato manuale ripristinato; contesto FullLanguage osservato | Nessuna modifica policy o promessa sui contesti futuri |
| Readiness v01 | BLOCKED, funzione Assert-AIOSPinnedEvidence non caricata | Archivio fallimento conservato; nessun retry automatico |
| Readiness v02 | PASS in lettura | E06; dipendenza Transaction.Core caricata e presenza funzioni verificata |
| 5 ottobre: perimetro ridotto | Consolidato in conversazione | Documento singolo, commit manuale, backlog rinviato |
| 5 ottobre: archivio ripartenza | Creato e conservato; utente lo riferisce in tools | Hash e inventario acquisiti, collocazione live da verificare |
| P0 | Aperto | Snapshot corrente e collocazione archivio |
| P1 / P2 | Aperti | Ripetibilità e pacchetto stabile |
| P3 / P4 | Aperti | Inserimento piano, allineamento pendenti, commit e prosecuzione |
| P5 / P6 | Aperti | LOGOS documentale e chiusura essenziale |

| 6–9 ottobre: P1/P2 | Review concluse nel proprio scope | 25/25 e 21/21 PASS nativi isolati; non qualificano automaticamente altre repo |
| 7–9 ottobre: cinque tracciati P3 | Apply, Verify e review chiuse | Kernel, Backup/GitHub, Runtime, Instructions, Index |
| 9 ottobre: Run Instructions e Index | Accorpamento qualificato per le due azioni | Apply singola + gate + Verify in processo distinto + raccolta, 79 secondi riferiti ciascuno |
| 9 ottobre: tre non tracciati P3 | Provisioning V04 e Verify indipendente PASS | Tre REPLACE; prove e backup conservati; poi commit selettivo |
| 9 ottobre: commit selettivo | PASS locale, 22 file | 5fdc73a98f5a83d031aa3fa3ede5f74dc9276306; push manuale riferito dall'utente |
| 9–10 ottobre: guard | Nove casi riutilizzati; sei casi release PASS | Tre runtime installati, Verify e attivazione PASS; receipt 3080846e9f8f127dae2a4d79ad483fd9498b2e84827b5d04d7a9b0df9f223a03 |
| 10 ottobre: precontrollo P4 | PASS in sola lettura | HEAD e origin/main locali e022b4d2dcb7dc2c15f502b240608aa2293934d4; pulita, nessuno staged; manuale 42.148 byte |
| 10 ottobre: compatibilità file esclusi | Qualificazione 10/10, release quattro runtime e Verify PASS; setup 6/6 riutilizzato | Receipt corrente 4d2ae82ddc1402187a858c96e442227e328d21aea4c465aee27f2abd92e5418e |
| 10 ottobre: Check manuale precedente | Check/raccolta PASS, 46 secondi, zero scritture | Report 57dc046d9f3493d8d8b4b2d2e7d7109d6911c436d0535148a6734ca0a955dfcc; proposta precedente, nessun Apply |
| P4/P5/P6, stato al 10 ottobre | P4 in chiusura documentale; P5/P6 aperti | Check del diff aggiornato, consenso, Apply/gate/Verify/raccolta; commit/push manuali; profilo seconda repo e primo uso utile |

## 18. CQD, fonti e version history

Fonti primarie interne storiche del 5 ottobre: protocollo STP v1.0, CQD v1.2, Session v1.2, State v1.1, Chat Anchor v1.1, Sistema Fonti v1.0, Boot v1.4, Kernel Manifest v1.2, Runtime Operating Layer v1.4, Project Instructions contenuto v3.1 e contratto Safe Document Apply v0.5 acquisiti dalla release. Il contratto storico mantiene le sue limitazioni: il presente piano non lo aggiorna implicitamente.

Fonti tecniche: runtime/contract release v0.3; materiali E01–E09; review del primo ciclo e della readiness; richieste utente del 5 ottobre. Le prove supportano risultati osservati, il codice supporta i limiti, le richieste utente supportano lo scope; nessuna di queste categorie viene usata al posto delle altre.

CQD: header, indice, sezioni, rimandi e history presenti; stato acquisito, proposto e futuro separati. La v1.2 aggiorna tre range della v1.1 locale tracciata; conserva storico, evidenze del primo ciclo e byte esterni ai range. La v1.1 è stata provisionata e committata. La preparazione della v1.2 non attesta la sua Apply né il PASS del nuovo Check. Metriche calcolate prima dell'esportazione e confrontate con i byte nello ZIP, in `CQD_REPORT.json`, senza autoreferenza del proprio hash nel corpo. Pipeline locale di preparazione verificata; l'integrazione nella root e la review della futura Apply restano distinte.

Version history:

- v1.2 — 2026-10-10 — Proposta finale P4: provisioning P3 e commit registrati; release guard e compatibilità file esclusi verificate; receipt corrente e Check precedente referenziati; nuovo HEAD, flusso accorpato, deroga di lettura puntuale, commit/push manuali. Questa postimage aggiornata conserva storico e byte esterni ai tre range; il proprio Check e Apply restano da attestare.

- v1.1 — 2026-10-09 — Proposta di allineamento P3: cinque tracciati chiusi, accorpamento nel proprio scope, letture locali e log, pacchetti senza annidamento, tre REPLACE di provisioning, residuo P4/P5/P6. Storico e prove del primo ciclo conservati. Nessuna installazione della proposta attestata dalla sua preparazione.

- v1.0 — 2026-10-05 — Creazione del documento operativo consolidato: stato acquisito, procedura corrente e prevista, comando conversazionale, piano P0–P6, backlog futuro, archivio e dipendenze, STP a tre livelli, checkpoint e ripartenza. Nessuna installazione o scrittura nella root reale eseguita dalla sua creazione.
