@echo off
color 0a
cd "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\"
del /f /q /s starter.bat
echo @echo off >> starter.bat
echo color 0a >> starter.bat
echo ---------------------------------------------------------------------------
echo                                      Hi !
echo ----------------------------------------------------------------------------
echo Automating clean-up of temporary files :
echo echo ------------------------------------------------------------------------------------------------------- >> starter.bat
echo echo                                INITIATING AUTOMATION SCRIPTS                                            >> starter.bat
echo echo ------------------------------------------------------------------------------------------------------- >> starter.bat
echo timeout /NOBREAK /T 5 >> starter.bat
echo.
echo echo. >> starter.bat
echo echo Clean-up of temporary files...... >> starter.bat
echo del /f /q /s %%TEMP%%\* >> starter.bat
echo Done !
timeout /NoBreak /T 3
echo.
echo echo ----------------------------------------------------------------------------- >> starter.bat
echo timeout /NoBreak /T 3 >> starter.bat
echo echo. >> starter.bat
echo Automating cleanup of recent files history 
echo echo Clean-up of temp file history >> starter.bat
echo del /f /q /s %%appdata%%\Microsoft\Windows\Recent\* >> starter.bat
echo echo Done ! >> starter.bat
echo Done !
echo timeout /NOBREAK /T 3 >> starter.bat
echo echo. >> starter.bat
timeout /NoBreak /T 3
echo.
echo -----------------------------------------------------------------------------
echo Automating DNS resolver cache flush - to improve internet speed
echo echo ---------------------------------------------------------------------- >> starter.bat
echo echo                         Improving internet speed                       >> starter.bat
echo echo ---------------------------------------------------------------------- >> starter.bat
echo ipconfig /flushdns >> starter.bat
echo echo. >> starter.bat
echo Done !
echo timeout /NOBREAK /T 3 >> starter.bat
echo echo. >> starter.bat
echo echo DNS resolver cache flushed >> starter.bat
echo.
echo timeout /NOBREAK /T 3 >> starter.bat
echo cls >> starter.bat
echo ---------------------------------------------------------------------------------------------
echo                                  DISABLING SOME USELESS SERVICES                               
echo ---------------------------------------------------------------------------------------------
echo (NOTE: If you didn't run as administrator , services can't be configured)
echo.
timeout /NOBREAK /T 3
echo.
sc config Sysmain start= disabled
sc config Wsearch start= demand
sc config BITS start= demand
sc config WMPNetworkSvc start= disabled
timeout /NOBREAK /T 3
cls
echo [Simply press ENTER if you want to skip this step]
echo.
set /p website="Enter the website(example: www.google.com) u need to open everytime windows is turned on : "
if "%website%" == "" goto SKIP
echo echo ---------------------------------------------------------------------------------------- >> starter.bat
echo echo                      LAUNCHING %website% FROM YOUR DEFAULT BROWSER.....                  >> starter.bat
echo echo ---------------------------------------------------------------------------------------- >> starter.bat
echo echo. >> starter.bat
echo.
echo timeout /NOBREAK /T 5 >> starter.bat
echo start %website% >> starter.bat
echo echo. >> starter.bat
:SKIP
echo ---------------------------------------------------------------------------------------------
echo                                EVERYTHING AUTOMATED ... REBOOTING.....                    
echo ---------------------------------------------------------------------------------------------
echo echo. >> starter.bat
echo.
echo timeout /NOBREAK /T 5 >> starter.bat
timeout /NOBREAK /T 5
shutdown /r /f /t 0
