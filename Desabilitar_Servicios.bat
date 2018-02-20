@echo off

REM Windows Update
net stop wuauserv
sc config wuauserv start=disabled

REM Administrador de mapas
net stop MapsBroker
sc config MapsBroker start=disabled

REM dmwappushsvc
net stop dmwappushservice
sc config dmwappushservice start=disabled

REM desactiva Superfecht
net stop SysMain
sc config SysMain start=disabled

REM desactiva telefonía
net stop TapiSrv
sc config TapiSrv start=disabled

REM desactiva tarjeta inteligente
net stop SCardSvr
sc config SCardSvr start=disabled

REM desactiva tarjeta inteligente
net stop AdobeARMservice
sc config AdobeARMservice start=disabled

REM borra el espía
sc delete DiagTrack
sc delete dmwappushservice
echo "" > C:\ProgramData\Microsoft\Diagnosis\ETLLogs\AutoLogger\AutoLogger-Diagtrack-Listener.etl

pause
exit
