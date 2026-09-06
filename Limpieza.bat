@echo off
rem comprueba si se esta ejecutando a pantalla completa, si no lo está, vuelve a ejecutar el script en modo maximizado
powershell -NoProfile -WindowStyle Hidden -Command "$sig='[DllImport(\"kernel32.dll\")]public static extern IntPtr GetConsoleWindow();[DllImport(\"user32.dll\")]public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);';$t=Add-Type -MemberDefinition $sig -Name Win32 -Namespace Console -PassThru;$h=$t::GetConsoleWindow();$t::ShowWindow($h,3)|Out-Null" >nul 2>&1
cls
color 0a
setlocal enabledelayedexpansion
chcp 65001
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
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo (%%A
ECHO.
PAUSE
REM **********************************************************************************************
REM Edición 2.4, Basada en el borrador de temporales del mismo autor con diferente seudónimo
REM **********************************************************************************************
rem Edición 2.5 Cambios:
rem Cambio en el modo de borrado de caché de edge, antes borraba directamente todo el perfil.
rem Añadido borrado de caché de Firefox, antes borraba todo el perfil.
rem Corregido el ASCII art, ahora se ve correctamente en la consola.
rem La papelera de reciclaje se borra en todas las unidades, no solo en C:\
rem La consola comprueba si se ejecuta maximizada, si no lo está, se vuelve a ejecutar en modo maximizado.
rem Añadida la opcion de hacer copia de seguridad de los controles, personajes y presets de Star Citizen.
rem Esta copia de seguridad comprende los controles y camaras, los avatares y los power presets.
rem Para hacer la copia de seguridad, el script pide la ruta de instalación del juego, si no se introduce nada, se toma la ruta por defecto.
echo **********************************************************************************************
echo *Este script hace copia de seguridad de controles, posiciones de camaras, los avatares y los *
echo *power presets,  limpia temporales de Windows Update,  Navegadores,  Java,  DNS  y  Shaders.**
echo *Es recomendable cerrar *ABSOLUTAMENTE TODAS* las aplicaciones antes de ejecutar este script.*
echo *ASEGÚRATE QUE TUS CUENTAS DE USUARIO EN TUS NAVEGADORES HABITUALES ESTÁN SINCRONIZADAS ANTES*
echo *PARA QUE NO PIERDAS TUS  FAVORITOS,  COOKIES, FORMULARIOS Y CONTRASEÑAS, SI NO ES ASÍ, PULSA*
echo *********************AHORA Ctrl+C PARA CORTAR LA EJECUCIÓN DE ESTE SCRIPT.********************
echo *LA COPIA DE SEGURIDAD Y EL BORRADO DE SHADERS ES OPCIONAL Y TE DARÁ LA OPCIÓN MÁS ADELANTE.**
echo **********************************************************************************************
pause


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
    pause
    goto :fin
)

:: ================================================================================================
:: BLOQUE ELECCIÓN DE COPIA DE SEGURIDAD
:: ================================================================================================
echo.
echo ==============================================================================================
echo COPIAS DE SEGURIDAD DE STAR CITIZEN
echo ==============================================================================================
choice /c SN /n /m "¿Deseas hacer una copia de seguridad de tus controles, personajes y presets? S=Sí N=No "
if "%errorlevel%"=="2" goto :omitir_backup
if "%errorlevel%"=="1" goto :ruta_sc

:: ================================================================================================
:: BLOQUE CONFIGURACIÓN DE RUTA Y COPIA DE SEGURIDAD
:: ================================================================================================
:ruta_sc
echo.
echo ==============================================================================================
echo RUTAS DE STAR CITIZEN (LIVE, PTU, EPTU, HOTFIX)
echo ==============================================================================================
echo Por defecto, el juego se instala en:
echo C:\Program Files\Roberts Space Industries\StarCitizen
echo.
set /p SC_PATH="Introduce la ruta de tu carpeta StarCitizen (o presiona Enter para usar la de por defecto): "

REM Si se pulsa Enter sin escribir nada, se asigna la ruta por defecto
if "%SC_PATH%"=="" set "SC_PATH=C:\Program Files\Roberts Space Industries\StarCitizen"

REM Limpieza de comillas dobles (por si se copia y pega la ruta desde el explorador)
set "SC_PATH=%SC_PATH:"=%"

REM Comprobación de que la ruta realmente existe
if not exist "%SC_PATH%" (
    color 0e
    echo.
    echo [ADVERTENCIA] La ruta "%SC_PATH%" no parece existir.
    echo Asegúrate de escribirla correctamente.
    pause
    color 0a
    goto :ruta_sc
)

echo.
echo Ruta configurada correctamente: "%SC_PATH%"
echo.
timeout /t 3 /nobreak

echo.
echo ==============================================================================================
echo REALIZANDO COPIA DE SEGURIDAD (Controles, Custom Characters y Power Presets)
echo ==============================================================================================
set "BACKUP_DIR=%USERPROFILE%\Documents\SC_Backups"

REM Crear la carpeta principal de copias de seguridad si no existe
if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"

REM Lista de posibles versiones instaladas
set "ENTORNOS=LIVE PTU EPTU HOTFIX"

echo Buscando archivos del perfil del jugador...
for %%E in (%ENTORNOS%) do (
    if exist "%SC_PATH%\%%E\USER\Client\0\" (
        
        REM Creamos una subcarpeta especifica para la version (ej. SC_Backups\LIVE)
        if not exist "%BACKUP_DIR%\%%E" mkdir "%BACKUP_DIR%\%%E"
        
        echo Guardando datos de %%E...
        
        REM Copiamos Controles y Camaras
        if exist "%SC_PATH%\%%E\USER\Client\0\Profiles\default\*.xml" (
            xcopy "%SC_PATH%\%%E\USER\Client\0\Profiles\default\*.xml" "%BACKUP_DIR%\%%E\Profiles\default\" /Y /I /E >nul 2>&1
            echo  - Controles y camaras [OK]
        )
        
        REM Copiamos Custom Characters (Avatares)
        if exist "%SC_PATH%\%%E\USER\Client\0\CustomCharacters\*.chf" (
            xcopy "%SC_PATH%\%%E\USER\Client\0\CustomCharacters\*.chf" "%BACKUP_DIR%\%%E\CustomCharacters\" /Y /I /E >nul 2>&1
            echo  - Custom Characters [OK]
        )
        
        REM Copiamos Power Presets
        if exist "%SC_PATH%\%%E\USER\Client\0\PowerPresets\" (
            xcopy "%SC_PATH%\%%E\USER\Client\0\PowerPresets\*.*" "%BACKUP_DIR%\%%E\PowerPresets\" /Y /I /E >nul 2>&1
            echo  - Power Presets [OK]
        )
    )
)
echo.
echo Tu configuracion completa esta a salvo en: %BACKUP_DIR%
echo.
timeout /t 5 /nobreak
goto :inicio_limpieza

:: ================================================================================================
:: ETIQUETA DE SALTO SI NO SE QUIERE COPIA
:: ================================================================================================
:omitir_backup
echo.
echo Has elegido NO hacer copia de seguridad de tu perfil. Saltando este paso...
echo.

:: ================================================================================================
:: BLOQUE LIMPIEZA TEMPORALES
:: ================================================================================================
:inicio_limpieza
echo Eliminando archivos temporales.
REM Detener servicios
net stop wuauserv >nul 2>&1
net stop BITS >nul 2>&1
net stop cryptSvc >nul 2>&1
net stop msiserver >nul 2>&1
net stop WSService >nul 2>&1

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
REM Esperar 1 segundo antes de renombrar y borrar carpetas
echo Esperando 1 segundo antes de renombrar y borrar carpetas asociadas a Windows Update...
timeout /t 1 /nobreak
REM Renombrar y borrar carpetas
echo Renombrando y borrando carpetas asociadas a Windows Update...
if exist C:\Windows\SoftwareDistribution (
    rename C:\Windows\SoftwareDistribution SoftwareDistribution.oldFolder >nul 2>&1
    rd /s /q C:\Windows\SoftwareDistribution.oldFolder >nul 2>&1
)
if exist C:\Windows\System32\catroot2 (
    rename C:\Windows\System32\catroot2 catroot2.oldFolder >nul 2>&1
    rd /s /q C:\Windows\System32\catroot2.oldFolder >nul 2>&1
)

::================================================================================
:: BLOQUE BORRADO DEL RESTO DE BASURA Y DNS CACHE
::================================================================================
rem Borrar archivos de la Papelera de Reciclaje en todas las unidades
echo Borrando archivos de la Papelera de Reciclaje de todas las unidades.
for %%D in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist "%%D:\$Recycle.Bin" (
        rd /s /q "%%D:\$Recycle.Bin" >nul 2>&1
    )
)

rem Borrar archivos temporales de Java (bloque intencionalmente sin modificar)
echo Eliminando archivos temporales de Java.
del /s /q "C:\Users\%USERNAME%\AppData\LocalLow\sun\java\deployment\cache\*.*"

rem Borrar caché y temporales de Microsoft Edge
echo Comprobando que tenga cerrado Microsoft Edge y procesos relacionados.
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im msedgewebview2.exe >nul 2>&1
taskkill /f /im msedgeupdate.exe >nul 2>&1
taskkill /f /im runtimebroker.exe >nul 2>&1
taskkill /f /im smartscreen.exe >nul 2>&1
timeout /t 1 /nobreak

echo Borrando caché y temporales de Microsoft Edge.
for /D %%d in ("C:\Users\*") do del "%%d\AppData\Local\Microsoft\Edge\User Data\Default\Cache\*.*" /S /Q /F >nul 2>&1
for /D %%d in ("C:\Users\*") do del "%%d"\"AppData\Local\Microsoft\Windows\Temporary Internet Files"\*.* /S /Q /F >nul 2>&1
for /D %%a in ("C:\Users\*") do for /D %%b in ("%%a"\"AppData\Local\Microsoft\Windows\Temporary Internet Files"\*) do rmdir "%%b" /S /Q >nul 2>&1

rem Borrar caché y temporales de Chrome
echo Comprobando que tenga cerrado Google Chrome y procesos relacionados.
taskkill /f /im chrome.exe >nul 2>&1
taskkill /f /im GoogleCrashHandler.exe >nul 2>&1
taskkill /f /im GoogleCrashHandler64.exe >nul 2>&1
taskkill /f /im GoogleUpdate.exe >nul 2>&1
timeout /t 1 /nobreak

echo Borrando caché y temporales de Chrome.
for /D %%d in ("C:\Users\*") do del "%%d"\"AppData\Local\Google\Chrome\User Data\Default\Cache"\*.* /S /Q /F >nul 2>&1
for /D %%a in ("C:\Users\*") do for /D %%b in ("%%a"\"AppData\Local\Google\Chrome\User Data\Default\Cache"\*) do rmdir "%%b" /S /Q >nul 2>&1
for /D %%d in ("C:\Users\*") do del "%%d"\"AppData\Local\Google\Chrome\User Data\Default\Media Cache"\*.* /S /Q /F >nul 2>&1
for /D %%a in ("C:\Users\*") do for /D %%b in ("%%a"\"AppData\Local\Google\Chrome\User Data\Default\Media Cache"\*) do rmdir "%%b" /S /Q >nul 2>&1

rem Borrar caché y temporales de Firefox
echo Comprobando que tenga cerrado Firefox y procesos relacionados.
taskkill /f /im firefox.exe >nul 2>&1
taskkill /f /im plugin-container.exe >nul 2>&1
taskkill /f /im updater.exe >nul 2>&1
taskkill /f /im crashreporter.exe >nul 2>&1
taskkill /f /im firefoxCP.exe >nul 2>&1
timeout /t 1 /nobreak

echo Borrando caché y temporales de Firefox.
for /D %%d in ("C:\Users\*") do (
    for /D %%p in ("%%d\AppData\Local\Mozilla\Firefox\Profiles\*") do (
        if exist "%%p\cache2" (
            del "%%p\cache2\*.*" /S /Q /F >nul 2>&1
            for /D %%b in ("%%p\cache2\*") do rmdir "%%b" /S /Q >nul 2>&1
        )
    )
)

::================================================================================
:: BLOQUE SHADERS DE STAR CITIZEN
::================================================================================
echo.
choice /c SN /n /m "¿Deseas borrar los shaders de Star Citizen? S=Sí N=No "
if "%errorlevel%"=="1" goto :shaders_si
if "%errorlevel%"=="2" goto :shaders_no

:shaders_si
echo Borrando shaders de Star Citizen...
for /D %%d in ("C:\Users\*") do del "%%d"\"AppData\Local\Star Citizen"\*.* /S /Q /F >nul 2>&1
for /D %%a in ("C:\Users\*") do for /D %%b in ("%%a"\"AppData\Local\Star Citizen"\*) do rmdir "%%b" /S /Q >nul 2>&1
goto :mensaje_final

:shaders_no
echo Has elegido no borrar los shaders de Star Citizen.
goto :mensaje_final

::================================================================================
:: BLOQUE FINAL Y REINICIO
::================================================================================
:mensaje_final
echo.
echo ==============================================================================================
echo Limpieza completada.
echo Es necesario reiniciar el equipo para aplicar todos los cambios.
echo ==============================================================================================
echo RECUERDA VOLVER A INICIAR SESION EN TUS NAVEGADORES, LA LIMPIEZA PUEDE HABERTE CERRADO LA SESIÓN
echo *Herramienta creada por Tropidopy para la comunidad de Star Citizen.
echo *COMÉNTAME POR DISCORD DÓNDE NECESITA MEJORAR O QUÉ LE FALTA, ESTOY ABIERTO A CRÍTICAS. (Rascayuu#5718)
echo *Mejor hacer algo imperfecto que no hacer nada sin fallo alguno. Robert Schuller.
echo ==============================================================================================
pause

rem Usamos el comando choice para dar a escoger cuando reiniciar.
echo.
choice /c 12 /n /t 20 /d 1 /m "Pulse un número: 1 Reiniciar ya, 2 Reiniciar en 3 minutos. (Por defecto en 20s)"
if "%errorlevel%"=="1" goto :op1
if "%errorlevel%"=="2" goto :op2

:op1
echo Reiniciando el equipo ahora...
shutdown /r /f /t 0
goto :fin

:op2
echo Reiniciando el equipo en 3 minutos... Guarda tus cosas.
shutdown /r /f /t 180

:fin
endlocal