@echo off
echo ADB GUI v1.1
echo Credits to: iMegax_ (Discord)
timeout /t 3 >nul
echo Femboy se vuelve el que lo llegue a leer
cls
title Select flash (ADB GUI V1.1)
echo -----------------------------------------
echo Fastboot flasher (For test, no for use)
echo 1. Flash System.img
echo 2. Flash Custom Recovery
echo 3. Unlock bootloader (Universal)
echo 4. Unlock bootloader (Huawei/Motorola)(needs code)
echo 5. Exit
echo -----------------------------------------
echo Bootloader unlock cooming soon...
set/p choice=Select a option:  
if not '%choice%'== set choice=%choice:~0,1%>nul
if '%choice%'=='1' goto :SyS
if '%choice%'=='2' goto :Reco
if '%choice%'=='3' goto :universal
if '%choice%'=='4' goto :MotoHuawei
if '%choice%'=='5' goto :Close

set folder=%FL%\bin\

goto end

:SyS
cls
Echo -----------------------------------------
echo Wait, Flash in process...
echo -----------------------------------------
Title Reading devices...
adb\fastboot.exe devices
title Flashing "System" / DON'T DISCONECT THE PHONE / CLOSE THIS WINDOWS IN THE FLASHING
adb\fastboot.exe flash system %FL%system.img
timeout /t 3 >nul
echo ----------------------------------------
echo Rebooting...
echo ----------------------------------------
title EL CREADOR DE ESTE PROGRAMA ES BISEXUAL Y LE ENCANTA LA POLLA (Bromita)
timeout /t 1 >nul
adb\fastboot.exe reboot
echo ----------------------------------------
echo Rebooted!
echo ----------------------------------------
Title Maked! / Cloosing...
timeout /t 1 >nul
goto end

:Reco
cls
Echo -----------------------------------------
echo Wait, Flash in process...
echo -----------------------------------------
Title Reading devices...
adb\fastboot.exe devices
title Flashing "Recovery" / DON'T DISCONECT THE PHONE / CLOSE THIS WINDOWS IN THE FLASHING
adb\fastboot.exe flash recovery %FL%reco.img
timeout /t 3 >nul
echo ----------------------------------------
echo Rebooting...
echo ----------------------------------------
title Guitar suelta a la niña >:v
timeout /t 5 >nul
adb\fastboot.exe reboot
echo ----------------------------------------
echo Rebooted!
echo ----------------------------------------
Title Maked! / Cloosing...
timeout /t 3 >nul
goto end

:Close
cls
Title Splash text reference minecraft :D
Echo -------------------------------
echo Closing...
echo -------------------------------
timeout /t 2 >nul
goto end

:Universal
cls
Echo ------------------------------------------
echo Bootloader unlocker
echo ------------------------------------------
timeout /t 3 >nul
title trying to unlock
adb\fastboot.exe oem unlock
adb\fastboot.exe flashing unlock
adb\fastboot.exe oem unlock critical
adb\fastboot.exe flashing unlock critical
timeout /t 2 >nul
title HIIIIIIIIIIIII, I'AM HERE!!
Echo ------------------------------------------
echo Rebooting...
echo ------------------------------------------
timeout /t 2 >nul
adb\fastboot.exe reboot
goto end

:MotoHuawei
cls
Echo ------------------------------------------
echo Bootloader unlocker (Huawei/Motorola)
echo ------------------------------------------
adb\fastboot.exe devices
set/p Code=Put the code: 
title trying to unlock
adb\fastboot.exe oem unlock %Code%
timeout /t 3 >nul
title What's you doing?
Echo ------------------------------------------
echo Rebooting...
echo ------------------------------------------
timeout /t 2 >nul
adb\fastboot.exe reboot
goto end

pause
exit