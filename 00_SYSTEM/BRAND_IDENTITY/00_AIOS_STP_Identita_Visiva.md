# AIOS — STP a tre livelli · Nuova identità visiva

**Documento:** `00_AIOS_STP_Identita_Visiva`  
**Versione:** v1.1 · 15 ottobre 2026  
**Destinazione approvata:** `00_SYSTEM/BRAND_IDENTITY/00_AIOS_STP_Identita_Visiva.md`  
**Stato revisione v1.1:** contenuto predisposto per applicazione manuale; non ancora applicato o pubblicato.  
**Provenienza immediata:** `03_AIOS_STP_Identita_Visiva_v1.0(1).md` (allegato alla micro-sessione AIOS).  
**Protocollo vigente consultato:** `../../02_PROTOCOLS/02_AIOS_STP_Protocol.md` (v1.0 al commit di boot).  
**Oggetto:** sostituzione del simbolo primario storico con il triangolo satinato, mantenimento del wordmark piatto e della palette/gerarchia tipografica già approvate.  
**Fonti:** `03_AIOS_Visual_Identity_v1.0(1).pdf`, `03_AIOS_Typography_System_v1.0(1).pdf`; tavola della variante satinata approvata in conversazione.

## Decisione da testare

Consolidare il nuovo simbolo satinato **senza ulteriori modifiche cromatiche e geometriche**, mantenendo invariati i cinque colori istituzionali, gli accenti UI, il wordmark grafico proprietario e il sistema Geist Sans + IBM Plex Mono. La Quick Guide precedente con palette e tipografia arbitrarie è esclusa.

## Livello 1 — Coerenza logica

| Verifica | Rilievo | Esito |
|---|---|---|
| Simbolo e wordmark | Due livelli di espressività diversi; il simbolo richiama struttura/intreccio, le lettere mantengono equilibrio | Coerente |
| Triangolo vs lettera A | Affinità geometrica voluta; possibile ridondanza, non collisione evidente nelle tavole | Accettabile |
| Palette del brand vs sfumature | Il nastro include tonalità luci/ombre non token UI; trattarle come parti dell'asset | Coerente con distinzione |
| Tradizione documentale | Il PDF v1.0 prescriveva un altro simbolo come master; richiede v1.1 e nuova referenza | Aggiornare documenti |

**Esito L1: APPROVATO.** Non emergono contraddizioni che rendano necessario ridisegnare il marchio.

## Livello 2 — Impatto sistemico

| Ambito | Impatto | Trattamento |
|---|---|---|
| Kernel, metodo, LOGOS, progetti | Nessun intervento necessario | Invariati |
| Brand — segno | Sostituzione master raster primario | Aggiornare Visual Identity |
| Tipografia | Nessuna nuova famiglia; wordmark non è un font | Aggiornare solo immagini e riferimenti |
| Palette globale | Nessuna variazione autorizzata | Conservare 5 colori + Copper + stati |
| Uso su dark | Wordmark scuro su superfici scure può perdere contrasto | Asset inverso con lettering chiaro, forma immutata, da validare |
| Variante print | Preview selezionata, ma non file prestampa | Evidenziare differenza visual/produzione |
| Versioni storiche | Prevenire confusione con precedente logo | Conservare v1.0 come archivio, v1.1 come corrente |

**Esito L2: APPROVATO CON PRESCRIZIONI.** Nessun refactor metodologico o cromatico. Impatto limitato a documentazione e produzione asset.

## Livello 3 — Robustezza strategica

| Rischio | Probabilità/Impatto qualitativo | Mitigazione e verifica |
|---|---|---|
| Perdita dettagli sotto 32 px | Medio / Medio | Test reale a 16/24/32/48/64 px, usare semplificata per microtaglie |
| Comportamento in stampa | Medio / Alto | Tracciato flat/monocolore dedicato, prove supporto/ICC |
| Look troppo futuristico nel tempo | Basso-Medio / Medio | Mantenerne finitura satinata sobria, vietare glow extra |
| Frammentazione della palette | Medio / Alto | Nessun nuovo token derivato arbitrariamente dalle luci del render |
| Wordmark poco leggibile su navy | Medio / Alto | Lettering inverso chiaro e prova di contrasto sulla composizione reale |
| Fidelity degli asset raster | Medio / Medio | Controllare bordi/alpha, antialias e eventuale master vettoriale separato |

**Esito L3: APPROVATO CON RISCHI RESIDUI DOCUMENTATI.** Il sistema di varianti permette estensione senza snaturare il segno primario.

## Esito complessivo STP

**APPROVATO CON CONDIZIONI APPLICATIVE.** La sostituzione del simbolo può essere consolidata immediatamente sul piano dell'identità; **non** è autorizzata una nuova palette o una rielaborazione automatica delle forme. La produzione di un master print vettoriale, di un master inverso verificato e il test microtaglie restano attività tecniche distinte.

### Condizioni di adozione

1. Nuova firma primaria = simbolo satinato **invariato** + wordmark geometrico proprietario **invariato**.
2. Palette confermata: `#5A77A3`, `#35527D`, `#1A2331`, `#F3F5F8`, `#C7D1DE`; accenti e stati come Visual Identity v1.0.
3. Tipografia confermata: Geist Sans + IBM Plex Mono; Manrope escluso, Sora/Inter/JetBrains non sostitutivi.
4. Su sfondo dark non usare testo quasi dello stesso tono; preparare asset inverso con lettering chiaro, senza alterare geometria.
5. Variante print come da selezione visiva utente; l'estratto dalla tavola è **riferimento**, non file esecutivo di stampa.
6. Fino ai test reali, 32 px è **soglia cautelativa** per simbolo satinato, non minimo certificato.
7. Quick Guide con colori/font incompatibili dichiarata obsoleta ed esclusa dai documenti ufficiali.

## Stato e tracciabilità

- **#DECISION.aios.brand.satinato** — simbolo satinato adottato; palette, wordmark e font invariati.
- **#STRUCTURE.aios.brand.varianti** — principali: satinato, print semplificata, dark inversa, small-size condizionale.
- **#TASK.aios.brand.print-master** — predisporre asset di stampa fedele, possibilmente vettoriale, con prove reali.
- **#TASK.aios.brand.microtest** — test a dimensioni reali e fondo chiaro/scuro.
- **#TASK.aios.brand.dark-lockup** — approvare tecnicamente master inverso.

**Checkpoint:** STP concluso, revisione documentale autorizzata, test fisici e file tecnici di produzione non dichiarati conclusi.


## Integrazione documentale v1.1 — 15 ottobre 2026

- **Perimetro:** collocazione dello STP storico nella nuova area `00_SYSTEM/BRAND_IDENTITY/`, senza ripetere o mutare i tre livelli e il loro esito.
- **Documenti collegati:** `00_AIOS_Visual_Identity.md` e `00_AIOS_Typography_System.md` (in questa stessa directory, da creare manualmente).
- **Asset di riferimento disponibili:** `assets/AIOS-logo-official.png`, `assets/AIOS-symbol-official.png`, `assets/AIOS-logo-print.png`; la variante print rimane un riferimento visivo raster, non un esecutivo prestampa certificato. Variante inversa e test microtaglie rimangono da validare.
- **Provenienza:** testo integrale di `03_AIOS_STP_Identita_Visiva_v1.0(1).md` ricevuto in questa sessione. I riferimenti ai PDF v1.0 e alla tavola grafica nella sezione originale sono storia del documento: gli originali non sono stati acquisiti integralmente durante questo passaggio.
- **Gate documentale:** v1.1 candidata; nessuna Apply, scrittura repository, validazione di produzione o pubblicazione attestata.

### Version history

- **v1.1, 15.10.2026:** collocazione approvata, filename e percorsi di riferimento aggiornati, nota di provenienza; decisione STP e prescrizioni di v1.0 preservate.
- **v1.0, 08.10.2026:** STP originale a tre livelli che approva il simbolo satinato con condizioni applicative.
