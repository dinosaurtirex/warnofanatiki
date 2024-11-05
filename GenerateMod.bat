@echo off
set GAME_NAME=WARNO

for %%* in (.) do set CurrDirName=%%~nx*
..\..\%GAME_NAME%.exe -headless -generatemod "%CurrDirName%" -rootdata "Mods/%CurrDirName%/" CommonData:Clusters/Bootstrap/ClusterBootstrapGeneration.ndf
if %ERRORLEVEL% EQU 0 ..\..\Tools\AssetCooker.exe -e CoreCatalog.cat -g ./Gen/ --common-data ./CommonData/ --game-data ./GameData/
if %ERRORLEVEL% EQU 0 ..\Utils\Python\python.exe ..\Utils\Scripts\CopyModGenData.py %GAME_NAME% "%CurrDirName%"
PAUSE
