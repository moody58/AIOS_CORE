Documento: 02\_AIOS\_Project\_Launch\_Protocol



Versione: v1.2



Scopo:

Definire la sequenza ufficiale di avvio di un nuovo progetto

all'interno del metasistema AIOS.





\# PRINCIPIO FONDAMENTALE



La Control Room AIOS non sviluppa direttamente i progetti.



Il suo compito è:



• riconoscere l'intenzione di avvio  

• classificare il progetto  

• generare la regia  

• trasferire l’operatività nella chat di progetto  





\# SEQUENZA DI AVVIO PROGETTO



1\. Riconoscimento richiesta progetto  

&#x20;  (linguaggio naturale o comando).



2\. Identificazione nome progetto.



3\. Classificazione progetto:



&#x20;  Livello 1 — progetto leggero  

&#x20;  Livello 2 — progetto strutturato  

&#x20;  Livello 3 — progetto sistemico



4\. Duplicazione dell'AIOS Universal Project Template.



5\. Generazione della REGIA progetto.



6\. Creazione nuova chat di progetto con titolo:



&#x20;  REGIA --- NOME\_PROGETTO



7\. Primo messaggio della Regia:



&#x20;  utilizzare il template



&#x20;  PROJECT\_Regia\_Attivazione\_Template



8\. Compilazione dei campi del template con le

&#x20;  informazioni del progetto.



9\. Generazione dello stato iniziale del progetto:



&#x20;  00\_PROJECT\_State



10\. Dichiarazione dei documenti iniziali del progetto.



11\. Trasferimento dell'operatività nella Regia del progetto.



12\. Aggiornamento indice progetti in AIOS.





\# NOTE OPERATIVE



Il template PROJECT\_Regia\_Attivazione\_Template contiene

il blocco standard di inizializzazione della Regia progetto.



Il protocollo non deve generare formati alternativi

ma richiamare direttamente il template.



Dopo l'innesco, la Control Room AIOS non entra

nel progetto operativo.



Mantiene solo funzione di:



• osservatorio del sistema  

• indice dei progetti  

• aggiornamento stato  





\# ARCHITETTURA DI AVVIO



AIOS

↓

Project Launch Protocol

↓

AIOS Universal Project Template

↓

Regia Progetto

↓

Chat Operativa Progetto





\# VERSION HISTORY



v1.2 — Integrazione AIOS Universal Project Template

&#x20;      e generazione stato iniziale progetto.



v1.1 — Rimozione template interno e integrazione

&#x20;      PROJECT\_Regia\_Attivazione\_Template.



v1.0 — Definizione del protocollo ufficiale

&#x20;      di avvio progetti AIOS.



