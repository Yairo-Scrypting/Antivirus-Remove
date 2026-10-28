⚠️ Windows Security Removal Script

Autor: Yairon Jesus Perez Barreda

[!CAUTION]
ADVERTENCIA: SCRIPT POTENCIALMENTE DESTRUCTIVO

Este proyecto contiene un script por lotes de Windows (.bat) que intenta desactivar mecanismos de seguridad, detener servicios y eliminar archivos críticos del sistema operativo y directorios relacionados con diferentes antivirus.

Su ejecución puede dejar el equipo vulnerable, provocar errores graves en Windows y requerir una reparación o reinstalación del sistema.

////////////////////////////////////////////////////////////////////////////////////////////////
------------------------------------------------------------------------------------------------
                         ⚠️ ATENCIÓN ⚠️

Descárguense el ZIP. En su interior encontrarán el acceso directo
TheEndforAntivirus.lnk.

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
1. Configuración inicial
@echo off: oculta los comandos durante la ejecución.
setlocal: establece un entorno local para las variables.
endlocal: finaliza dicho entorno.
2. Modificación del firewall

Utiliza netsh para intentar desactivar el firewall de Windows en distintos perfiles de red.

Riesgo: reduce la protección de las conexiones de red y puede aumentar la exposición a accesos no autorizados.

3. Modificación y eliminación de archivos del sistema

Emplea attrib para modificar atributos de archivos y directorios, e intenta eliminar componentes críticos, como ntfs.sys, netsh.exe, Dism.exe, sfc.exe y chkdsk.exe.

Riesgo: puede afectar al sistema de archivos, las herramientas de diagnóstico y la estabilidad general de Windows.

4. Detención de servicios de seguridad

Intenta detener servicios relacionados con Microsoft Defender, el Centro de seguridad y Windows Update.

Riesgo: puede reducir la protección antimalware y dificultar la instalación de actualizaciones de seguridad.

5. Eliminación de directorios

Intenta eliminar carpetas relacionadas con los registros de eventos, controladores, tareas programadas y componentes de Windows Defender.

También incluye directorios asociados con antivirus de terceros, como Avast, AVG, Bitdefender, Malwarebytes, ESET, Kaspersky, Norton, McAfee, Avira, Panda Dome, Trend Micro, Sophos, F-Secure y Webroot.

Riesgo: puede dañar instalaciones, eliminar información necesaria para el diagnóstico y dejar componentes de seguridad incompletos.


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
