⚠️ Windows Security Removal Script

Autor: Yairon Jesus Perez Barreda


Version : 2.0

[!CAUTION]
ADVERTENCIA: SCRIPT POTENCIALMENTE DESTRUCTIVO

Este proyecto contiene un script por lotes de Windows (.bat) que intenta desactivar mecanismos de seguridad, detener servicios y eliminar archivos críticos del sistema operativo y directorios relacionados con diferentes antivirus.

Su ejecución puede dejar el equipo vulnerable, provocar errores graves en Windows y requerir una reparación o reinstalación del sistema.

---------------------------------------------------------------
ejecutar prioritariamente el .bat con permisos de administrador
---------------------------------------------------------------

////////////////////////////////////////////////////////////////////////////////////////////////
------------------------------------------------------------------------------------------------
                         ⚠️ ATENCIÓN ⚠️

Descárguense el ZIP. En su interior encontrarán el acceso directo
TheEndforAntivirus.lnk.  El .Ink puede no ejecutarse, ejecutar prioritariamente el .bat con permisos de administrador

PRECAUCIÓN: este proyecto puede desactivar protecciones de seguridad y
eliminar archivos importantes de Windows. No lo ejecuten en su equipo principal.

////////////////////////////////////////////////////////////////////////////////////////////////
------------------------------------------------------------------------------------------------


Quiero informar que este proyecto esta en fase de revisión y puede contener errores


📌 Descripción del proyecto

Este proyecto, desarrollado por Yairon Jesus Perez Barreda, tiene como objeto el análisis técnico de un script de Windows que modifica configuraciones de seguridad y elimina componentes del sistema.

El código permite estudiar el funcionamiento de comandos administrativos de Windows y comprender los riesgos asociados a la ejecución de scripts con privilegios elevados.

Importante: no es una herramienta convencional de mantenimiento ni un desinstalador seguro de antivirus.

🔍 Funcionalidades y comportamiento
1. Configuración inicial y ocultación de errores
El script comienza con:

@echo off: evita mostrar normalmente los comandos ejecutados.
setlocal: establece un entorno local para las variables de CMD.
>nul 2>&1: redirige la salida estándar y los mensajes de error para que no aparezcan en pantalla.
endlocal: finaliza el entorno local al terminar.
Riesgo: la redirección de errores dificulta comprobar qué operaciones han fallado y cuáles se han completado.

2. Modificación del firewall
Utiliza comandos de netsh para intentar desactivar el firewall de Windows en los perfiles de red de dominio, privado y público.

También incluye una instrucción de la sintaxis antigua de netsh firewall.

Riesgo: puede reducir la protección de las conexiones de red y aumentar la exposición a accesos no autorizados.

El resultado depende de la versión de Windows, los permisos y las políticas de seguridad aplicadas.

3. Eliminación de configuraciones de arranque seguro
Intenta eliminar las claves Minimal y Network de la configuración de SafeBoot del Registro de Windows.

Estas claves están relacionadas con las configuraciones de inicio en modo seguro.

Riesgo: si las operaciones tienen éxito, pueden perjudicar las opciones de recuperación y dificultar la resolución de problemas del sistema.

4. Modificación de permisos del sistema
Emplea icacls para intentar conceder permisos de control total al grupo Users sobre C:\Windows\System32 y C:\Windows.

También utiliza attrib para intentar retirar atributos de sistema y solo lectura en archivos y directorios.

Riesgo: estos cambios pueden debilitar la protección de archivos esenciales y permitir modificaciones no deseadas de componentes de Windows.

La aplicación efectiva de los cambios depende de los permisos existentes, las protecciones del sistema y los errores que se produzcan.

5. Eliminación de archivos críticos
El script intenta eliminar diversos archivos del sistema, entre ellos:

ntfs.sys, relacionado con el sistema de archivos NTFS.
netsh.exe, herramienta de configuración de red.
Dism.exe, herramienta de mantenimiento de imágenes de Windows.
sfc.exe, herramienta de comprobación de archivos del sistema.
chkdsk.exe, herramienta de comprobación de discos.
WMIC.exe, herramienta de administración de Windows presente en determinadas versiones.
smartscreen.exe, componente asociado a las protecciones de SmartScreen.
SecurityHealthSystray.exe, componente relacionado con las notificaciones de seguridad.
Riesgo: la eliminación de estos archivos puede inutilizar herramientas administrativas, afectar al sistema de archivos y dificultar el diagnóstico y la reparación de Windows.

Que el script incluya estas instrucciones no garantiza que Windows permita eliminar los archivos protegidos.

6. Intento de detener servicios de seguridad
Utiliza net stop para intentar detener servicios identificados como:

WinDefend, asociado a Microsoft Defender Antivirus.
security center, nombre utilizado en el intento de detener el servicio del Centro de seguridad.
sharedaccess, relacionado con la funcionalidad de uso compartido de conexión a Internet.
wuauserv, asociado a Windows Update.
SDRSVC, relacionado con las copias de seguridad de Windows en las versiones que incluyen ese servicio.
Riesgo: puede reducir la protección antimalware, interferir con las actualizaciones o afectar a otras funciones del sistema.

Los nombres de los servicios y la posibilidad de detenerlos varían según la versión de Windows y las protecciones activas.

7. Eliminación de componentes de Windows Defender
Intenta eliminar directorios y archivos relacionados con:

Windows Defender.
Windows Defender Advanced Threat Protection.
Datos, análisis y definiciones de Microsoft Defender.
Componentes de Windows Security.
Tareas programadas relacionadas con Windows Defender.
También intenta eliminar registros de eventos y el directorio de controladores de Windows.

Riesgo: puede perjudicar la protección antimalware, eliminar información útil para el diagnóstico y provocar fallos graves en el sistema operativo.

La eliminación de registros puede dificultar la investigación posterior de incidentes.

8. Eliminación de directorios de antivirus de terceros
El código contiene bloques identificados mediante comentarios para distintos fabricantes.


Fabricante	Directorios mencionados en el script
Avast	Avast Software
AVG	AVG
Bitdefender	Bitdefender y Bitdefender Agent
Malwarebytes	Malwarebytes
ESET	ESET
Kaspersky	Kaspersky Lab
Norton	Norton y Norton Security
McAfee	McAfee y Endpoint Security
Avira	Avira
Panda Dome	Panda Security
Trend Micro	Trend Micro
Sophos	Sophos
F-Secure	F-Secure
Webroot	Webroot y WRData
Para estos directorios utiliza rmdir /s /q, una instrucción que intenta eliminar recursivamente carpetas y su contenido sin solicitar confirmación.

Riesgo: puede corromper instalaciones de seguridad, eliminar datos necesarios y dejar programas parcialmente instalados o en estados inconsistentes.

Las rutas enumeradas no representan necesariamente todas las ubicaciones utilizadas por cada fabricante. Tampoco significa que todos esos productos estén instalados o que las operaciones vayan a tener éxito.

Este método no sustituye a los desinstaladores oficiales.

9. Modificación de UAC mediante el Registro
El script intenta establecer el valor EnableLUA en 0 dentro de la clave de políticas del sistema.

Este valor está relacionado con el Control de cuentas de usuario (UAC).

Riesgo: modificar esta configuración puede debilitar mecanismos de protección y alterar el comportamiento de seguridad de Windows. El cambio puede requerir reiniciar el equipo para surtir efecto y su comportamiento depende de la configuración y la versión del sistema.

10. Intento de eliminar TrustedInstaller
Incluye una operación que intenta eliminar:

C:\Windows\servicing\TrustedInstaller.exe

Este archivo está relacionado con el servicio de instalación de módulos de Windows, utilizado para mantener y reparar componentes del sistema.

Riesgo: dañar este componente puede perjudicar las operaciones de mantenimiento, instalación de actualizaciones y reparación de Windows.


12. Reinicio forzado
Al final utiliza shutdown con opciones para reiniciar inmediatamente y forzar el cierre de aplicaciones.


🚨 Advertencias y precauciones
No ejecutar en equipos personales o de producción que contengan información importante.
No utilizar en dispositivos ajenos sin autorización expresa.
No desactivar las protecciones del sistema para facilitar su ejecución.
No asumir que los cambios son reversibles.
No utilizar este script como método de desinstalación de antivirus.
Para fines de investigación, priorizar el análisis estático y utilizar máquinas virtuales aisladas y desechables cuando sea necesario realizar pruebas.
🛡️ Posibles consecuencias
Desactivación del firewall.
Pérdida o reducción de la protección antivirus.
Eliminación de archivos esenciales de Windows.
Fallos de controladores y servicios.
Pérdida de registros del sistema.
Problemas con las actualizaciones.
Necesidad de reparar o reinstalar Windows.


🔧 Alternativas seguras

Para tareas legítimas de administración, se recomienda utilizar las herramientas oficiales de Windows y los desinstaladores proporcionados por cada fabricante de antivirus.

Para diagnosticar problemas del sistema, utiliza las herramientas documentadas de reparación de Windows, como DISM y SFC, sin eliminar sus ejecutables.

📄 Autoría y responsabilidad
Autor del proyecto: Yairon Jesus Perez Barreda.
Tipo de proyecto: análisis técnico y educativo de scripts de Windows.
Plataforma: Microsoft Windows.
Formato: archivo por lotes (.bat).

Este repositorio se presenta con fines de documentación, aprendizaje e investigación autorizada. El autor no recomienda ejecutar el script en sistemas reales, debido a los riesgos que implica para la seguridad y la integridad del sistema operativo.




Gracias por leer

Aviso: la ejecución del código es responsabilidad de quien lo utilice. Su comportamiento puede variar según la versión de Windows, los permisos y las protecciones activas.
