Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

PS C:\Users\Usuario> # Trabajo Practico 1 - PowerShell
PS C:\Users\Usuario> # Obtencion de informacion del sistema
PS C:\Users\Usuario> # 1. Version y edicion de PowerShell
PS C:\Users\Usuario> $PSVersionTable

Name                           Value
----                           -----
PSVersion                      5.1.26100.9711
PSEdition                      Desktop
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
BuildVersion                   10.0.26100.9711
CLRVersion                     4.0.30319.42000
WSManStackVersion              3.0
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1


PS C:\Users\Usuario> # 2. Configuracion de permisividad
PS C:\Users\Usuario> Get-ExecutionPolicy -List

        Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser       Undefined
 LocalMachine       Undefined


PS C:\Users\Usuario> # 3. Informacion de Windows
PS C:\Users\Usuario> Get-ComputerInfo |
>>     Select-Object WindowsProductName,
>>                   WindowsEditionId,
>>                   WindowsVersion,
>>                   OsBuildNumber,
>>                   OsArchitecture


WindowsProductName : Windows 10 Pro
WindowsEditionId   : Professional
WindowsVersion     : 2009
OsBuildNumber      : 26300
OsArchitecture     : 64 bits



PS C:\Users\Usuario> # 4. Comando del simbolo del sistema
PS C:\Users\Usuario> cmd.exe /c systeminfo

Nombre de host:                            MARCE-ZYZZ
Nombre del sistema operativo:              Microsoft Windows 11 Pro
Versión del sistema operativo:             10.0.26300 N/D Compilación 26300
Fabricante del sistema operativo:          Microsoft Corporation
Configuración del sistema operativo:       Estación de trabajo independiente
Tipo de compilación del sistema operativo: Multiprocessor Free
Propietario registrado:                    Usuario
Organización registrada:
Id. del producto:                          00331-10000-00001-AA697
Fecha de instalación original:             3/7/2025, 15:28:57
Tiempo de arranque del sistema:            22/10/2026, 12:04:29
Fabricante del sistema:                    Micro-Star International Co., Ltd.
Modelo del sistema:                        MS-7C52
Tipo de sistema:                           x64-based PC
Procesadores:                              1 Procesadores instalados.
                                           [01]: AMD64 Family 23 Model 96 Stepping 1 AuthenticAMD ~3801 Mhz
Versión del BIOS:                          American Megatrends International, LLC. A.00, 11/7/2023
Directorio de Windows:                     C:\WINDOWS
Directorio de sistema:                     C:\WINDOWS\system32
Dispositivo de arranque:                   \Device\HarddiskVolume1
Configuración regional del sistema:        es;Español (internacional)
Idioma de entrada:                         es-mx;Español (México)
Zona horaria:                              (UTC-03:00) Ciudad de Buenos Aires
Memoria física total:                      8.085 MB
Memoria física disponible:                 2.778 MB
Memoria virtual: tamaño máximo:            17.813 MB
Memoria virtual: disponible:               8.766 MB
Memoria virtual: en uso:                   9.047 MB
Ubicaciones de archivos de página:         D:\pagefile.sys
Dominio:                                   WORKGROUP
Servidor de inicio de sesión:              \\MARCE-ZYZZ
Revisiones:                                5 revisión(es) instaladas.
                                           [01]: KB5127694
                                           [02]: KB5054156
                                           [03]: KB5121794
                                           [04]: KB5127648
                                           [05]: KB5127647
Tarjetas de red:                           1 Tarjetas de interfaz de red instaladas.
                                           [01]: Realtek Gaming 2.5GbE Family Controller
                                                 Nombre de conexión: Ethernet
                                                 DHCP habilitado:    Sí
                                                 Servidor DHCP:      192.168.0.1
                                                 Direcciones IP
                                                 [01]: 192.168.0.26
                                                 [02]: fe80::60c8:9c16:f8e1:a665
Seguridad basada en virtualización:        Estado: No habilitado
                                           App Control for Business policy: Forzado
                                           App Control for Business user mode policy: Desactivado
                                           Características de seguridad habilitadas:
Requisitos Hyper-V:                        Extensiones de modo de monitor de VM: Sí
                                           Se habilitó la virtualización en el firmware: Sí
                                           Traducción de direcciones de segundo nivel: Sí
                                           La prevención de ejecución de datos está disponible: Sí
PS C:\Users\Usuario> Write-Host "`nFin del informe."

Fin del informe.
PS C:\Users\Usuario>