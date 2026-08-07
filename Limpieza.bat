@echo off
cls
color 0a
setlocal enabledelayedexpansion
::: ██╗     ██╗███╗   ███╗██████╗ ██╗ █████╗ ██████╗  ██████╗ ██████╗      
::: ██║     ██║████╗ ████║██╔══██╗██║██╔══██╗██╔══██╗██╔═══██╗██╔══██╗     
::: ██║     ██║██╔████╔██║██████╔╝██║███████║██║  ██║██║   ██║██████╔╝     
::: ██║     ██║██║╚██╔╝██║██╔═══╝ ██║██╔══██║██║  ██║██║   ██║██╔══██╗     
::: ███████╗██║██║ ╚═╝ ██║██║     ██║██║  ██║██████╔╝╚██████╔╝██║  ██║     
::: ╚══════╝╚═╝╚═╝     ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝     
:::                                                                        
::: ██████╗  █████╗ ██████╗  █████╗                                        
::: ██╔══██╗██╔══██╗██╔══██╗██╔══██╗                                       
::: ██████╔╝███████║██████╔╝███████║                                       
::: ██╔═══╝ ██╔══██║██╔══██╗██╔══██║                                       
::: ██║     ██║  ██║██║  ██║██║  ██║                                       
::: ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝                                       
:::                                                                        
::: ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗███████╗    ██╗   ██╗
::: ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔════╝    ╚██╗ ██╔╝
::: ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║███████╗     ╚████╔╝ 
::: ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║╚════██║      ╚██╔╝  
::: ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝███████║       ██║   
 ::: ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚══════╝       ╚═╝   
:::                                                                        
::: ███████╗ ██████╗    ██████╗  ██████╗ ██████╗                           
::: ██╔════╝██╔════╝    ██╔══██╗██╔═══██╗██╔══██╗                          
::: ███████╗██║         ██████╔╝██║   ██║██████╔╝                          
::: ╚════██║██║         ██╔═══╝ ██║   ██║██╔══██╗                          
::: ███████║╚██████╗    ██║     ╚██████╔╝██║  ██║                          
::: ╚══════╝ ╚═════╝    ╚═╝      ╚═════╝ ╚═╝  ╚═╝                          
:::                                                                        
::: ████████╗██████╗  ██████╗ ██████╗ ██╗██████╗  ██████╗ ██████╗ ██╗   ██╗
::: ╚══██╔══╝██╔══██╗██╔═══██╗██╔══██╗██║██╔══██╗██╔═══██╗██╔══██╗╚██╗ ██╔╝
:::    ██║   ██████╔╝██║   ██║██████╔╝██║██║  ██║██║   ██║██████╔╝ ╚████╔╝ 
:::    ██║   ██╔══██╗██║   ██║██╔═══╝ ██║██║  ██║██║   ██║██╔═══╝   ╚██╔╝  
:::    ██║   ██║  ██║╚██████╔╝██║     ██║██████╔╝╚██████╔╝██║        ██║██╗
:::    ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═════╝  ╚═════╝ ╚═╝        ╚═╝╚═╝
::: 
::: 
::: for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo %%A
ECHO PARA OBTENER LA MEJOR EXPERIENCIA POSIBLE CON ESTE SCRIPT MAXIMICE LA VENTANA DEL CMD.
ECHO.
chcp 65001
PAUSE
rem **********************************************************************************************
REM Edición 2.3, Basada en el borrador de temporales del mismo autor con diferente seudónimo
rem **********************************************************************************************
rem Partimos de la base 2.3 de TEMPv2.3.bat
echo *Este script limpia archivos temporales de Windows Update, Navegadores, Java, DNS y Shaders.**
echo Es recomendable cerrar --ABSOLUTAMENTE TODAS-- las aplicaciones antes de ejecutar este script.
echo ***ASEGÚRATE QUE TU CUENTA DE USUARIO EN TUS NAVEGADORES HABITUALES ESTÁ SINCRONIZADA ANTES***
echo **PARA QUE NO PIERDAS TUS FAVORITOS, COOKIES, FORMULARIOS Y CONTRASEÑAS, SI NO ES ASÍ, PULSA**
echo AHORA Ctrl+C PARA INTERRUMPIR LA EJECUCIÓN DE ESTE SCRIPT. EL BORRADO DE SHADERS ES OPCIONAL Y
echo *******************************TE DARÁ LA OPCIÓN MÁS ADELANTE.********************************
echo **********************************************************************************************


:: ================================================================================================
:: BLOQUE COMPROBACION ADMIN
:: ================================================================================================
rem ejecuta net session y redirige los errores a nul
net session >nul 2>&1
rem comprueba el codigo de error, si es 0 es admin, si es cualquier otro valor, no lo es.
if %errorlevel%==0 (
    echo Estás en modo Administrador. TODO OK.
) else (
    color 04
    cls
    echo NO ESTÁS EN MODO ADMINISTRADOR, HAZ CLICK DERECHO Y EJECUTA COMO ADMINISTRADOR.
        goto :fin
)

:: ================================================================================================
:: BLOQUE LIMPIEZA TEMPORALES
:: ================================================================================================
echo Eliminando archivos temporales.
REM Detener servicios
net stop wuauserv
net stop BITS
net stop cryptSvc
net stop msiserver
net stop WSService


rem Limpieza de la carpeta Temp para cada usuario en C:\Users
echo Limpiando archivos temporales de cada usuario.
    for /D %%u in ("C:\Users\*") do (
        del "%%u\AppData\Local\Temp\*.*" /S /Q >nul 2>&1
)

rem Eliminación de carpetas vacías dentro de Temp
echo Eliminando carpetas vacías en las carpetas Temp.
    for /D %%u in ("C:\Users\*") do (
        for /D %%t in ("%%u\AppData\Local\Temp\*") do (
            rmdir "%%t" /S /Q >nul 2>&1
            if exist "%%t" echo No se pudo eliminar la carpeta: %%t
    )
)



rem Borrar archivos temporales de la carpeta global Temp
echo Eliminando archivos temporales en C:\Windows\Temp.
    del /s /q "C:\Windows\Temp\*.*" >nul 2>&1

rem Eliminación de carpetas vacías dentro de C:\Windows\Temp
echo Eliminando carpetas vacías en C:\Windows\Temp.
    for /D %%t in ("C:\Windows\Temp\*") do (
        rmdir "%%t" /S /Q >nul 2>&1
        if exist "%%t" echo No se pudo eliminar la carpeta: %%t
)


:: ================================================================================================
:: BLOQUE LIMPIEZA WINDOWS UPDATE
:: ================================================================================================
REM Esperar 10 segundos antes de renombrar y borrar carpetas
echo Esperando 1 segundo antes de renombrar y borrar carpetas asociadas a Windows Update...
timeout /t 1 /nobreak
REM Renombrar y borrar carpetas
echo Renombrando y borrando carpetas asociadas a Windows Update...
if exist C:\Windows\SoftwareDistribution (
    rename C:\Windows\SoftwareDistribution SoftwareDistribution.oldFolder
    rd /s /q C:\Windows\SoftwareDistribution.oldFolder
)
if exist C:\Windows\System32\catroot2 (
    rename C:\Windows\System32\catroot2 catroot2.oldFolder
    rd /s /q C:\Windows\System32\catroot2.oldFolder
)


::================================================================================
:: BLOQUE BORRADO DEL RESTO DE BASURA, DNS CACHE Y SHADERS
::================================================================================

rem Borrar archivos de la Papelera de Reciclaje
    echo Borrando archivos de la Papelera de Reciclaje.
        rd /s /q C:\$recycle.bin

rem Borrar archivos temporales de Java
    echo Eliminando archivos temporales de Java.
        del /s /q "C:\Users\%USERNAME%\AppData\LocalLow\sun\java\deployment\cache\*.*"

rem Borrar caché y temporales de Microsoft Edge
    echo Comprobando que tenga cerrado Microsoft Edge y procesos relacionados.
        taskkill /f /im msedge.exe
        taskkill /f /im msedgewebview2.exe
        taskkill /f /im msedgeupdate.exe
        taskkill /f /im runtimebroker.exe
        taskkill /f /im smartscreen.exe
            timeout /t 1 /nobreak
echo Borrando caché y temporales de Microsoft Edge.
    for /D %%d in ("C:\Users\*") do del "%%d\AppData\Local\Microsoft\Edge\User Data\Default\*.*" /S /Q
    for /D %%d in ("C:\Users\*") do del "%%d"\"AppData\Local\Microsoft\Windows\Temporary Internet Files"\*.* /S /Q /F
    for /D %%a in ("C:\Users\*") do for /D %%b in ("%%a"\"AppData\Local\Microsoft\Windows\Temporary Internet Files"\*) do rmdir "%%b" /S /Q

rem Borrar caché y temporales de Chrome
    echo comprobando que tenga cerrado Google Chrome y procesos relacionados.
        taskkill /f /im chrome.exe
        taskkill /f /im GoogleCrashHandler.exe
        taskkill /f /im GoogleCrashHandler64.exe
        taskkill /f /im GoogleUpdate.exe
            timeout /t 1 /nobreak

echo Borrando caché y temporales de Chrome
    for /D %%d in ("C:\Users\*") do del "%%d"\"AppData\Local\Google\Chrome\User Data\Default\Cache"\*.* /S /Q /F
    for /D %%a in ("C:\Users\*") do for /D %%b in ("%%a"\"AppData\Local\Google\Chrome\User Data\Default\Cache"\*) do rmdir "%%b" /S /Q
    for /D %%d in ("C:\Users\*") do del "%%d"\"AppData\Local\Google\Chrome\User Data\Default\Media Cache"\*.* /S /Q /F
    for /D %%a in ("C:\Users\*") do for /D %%b in ("%%a"\"AppData\Local\Google\Chrome\User Data\Default\Media Cache"\*) do rmdir "%%b" /S /Q

rem Borrar caché y temporales de Firefox
    echo Comprobando que tenga cerrado Firefox y procesos relacionados
        taskkill /f /im firefox.exe
        taskkill /f /im plugin-container.exe
        taskkill /f /im updater.exe
        taskkill /f /im crashreporter.exe
        taskkill /f /im firefoxCP.exe
            timeout /t 1 /nobreak
echo Borrando caché y temporales de Firefox
    for /D %%d in ("C:\Users\*") do del "%%d"\"AppData\Local\Mozilla\Firefox\Profiles"\*.* /S /Q /F
    for /D %%a in ("C:\Users\*") do for /D %%b in ("%%a"\"AppData\Local\Mozilla\Firefox\Profiles"\*) do rmdir "%%b" /S /Q


choice /c SN /n /m "¿Deseas borrar los shaders de Star Citizen? S=Sí N=No "
  if "%errorlevel%"=="1" goto :shaders_si
  if "%errorlevel%"=="2" goto :shaders_no

:shaders_si
echo Borrando shaders de Star Citizen...
    for /D %%d in ("C:\Users\*") do del "%%d"\"AppData\Local\Star Citizen"\*.* /S /Q /F
    for /D %%a in ("C:\Users\*") do for /D %%b in ("%%a"\"AppData\Local\Star Citizen"\*) do rmdir "%%b" /S /Q
    goto :mensaje_final
:shaders_no
echo Has elegido no borrar los shaders de Star Citizen.
    goto :mensaje_final
:mensaje_final
echo Limpieza completada.
echo Es necesario reiniciar el equipo para aplicar todos los cambios.


echo *********************************************************************************************************
echo RECUERDA VOLVER A INICIAR SESION EN TUS NAVEGADORES LA LIMPIEZA PUEDE HABERTE CERRADO LA SESIÓN EN ALGUNO
echo *********************************************************************************************************
echo *Herramienta creada por Tropidopy para la comunidad de Star Citizen.
echo *COMÉNTAME POR DISCORD DÓNDE NECESITA MEJORAR O QUÉ LE FALTA, ESTOY ABIERTO A CRÍTICAS. (Rascayuu#5718)
echo *Mejor hacer algo imperfecto que no hacer nada sin fallo alguno. Robert Schuller.
pause


rem Usamos el comando choice para dar a escoger cuando reiniciar. Dado que debería tener todo cerrado para la limpieza el reinicio no se demora. He dejado una opción de espera de 3 minutos para excepciones.
choice /c 12 /n /t 20 /d 1 /m "Pulse un número: 1 Reiniciar ya, 2 Reiniciar en 3 minutos, No seleccionar una opción reiniciará el equipo en 20 segundos"
  if "%errorlevel%"=="1" goto :op1
  if "%errorlevel%"=="2" goto :op2

:op1
  echo opcion uno
    endlocal
        shutdown /r /f /t 0

:op2
  echo opcion dos
    endlocal
        shutdown /r /f /t 180

:fin

endlocal