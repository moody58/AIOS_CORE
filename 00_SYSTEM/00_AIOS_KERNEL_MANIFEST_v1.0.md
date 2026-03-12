Documento: 00_AIOS_KERNEL_MANIFEST Versione: v1.0 Sistema: AIOS Tipo:
Kernel Manifest Anno: 2026

# 1 --- SCOPO DEL DOCUMENTO

Il Kernel Manifest definisce l'elenco ufficiale dei documenti che
compongono il Kernel operativo del sistema AIOS.

Permette al Runtime di: - identificare i documenti fondamentali -
verificare la presenza del Kernel - attivare i protocolli corretti
durante le sessioni

# 2 --- DEFINIZIONE DEL KERNEL

Il Kernel Documentale AIOS è l'insieme minimo di documenti necessari
affinché il sistema AIOS possa operare correttamente.

# 3 --- DOCUMENTI DEL KERNEL

## 00_SYSTEM

-   00_AIOS_KERNEL_MANIFEST
-   00_AIOS_RUNTIME_OPERATING_LAYER
-   00_AIOS_BOOT_SEQUENCE
-   00_AIOS_META_OBSERVATION
-   00_AIOS_SYSTEM_MAP
-   00_AIOS_ROOT_STRUCTURE

## 01_METHOD

-   01_AIOS_METHOD
-   01_AIOS_SESSION_PROTOCOL
-   01_AIOS_STATE_PROTOCOL

## 02_PROTOCOLS

-   02_AIOS_CHAT_ANCHOR_PROTOCOL
-   02_AIOS_CQD_PROTOCOL

# 4 --- PRINCIPIO DI ATTIVAZIONE

Quando una sessione AIOS viene avviata il sistema verifica la presenza
logica del Kernel Manifest.

# 5 --- DOCUMENTI NON RUNTIME

Questi protocolli non fanno parte del runtime minimo: -
02_AIOS_STP_PROTOCOL - 02_AIOS_PROJECT_LAUNCH_PROTOCOL -
02_AIOS_SISTEMA_FONTI - 02_AIOS_INCIDENT_MANAGEMENT

# VERSION HISTORY

v1.0 --- Introduzione Kernel Manifest
