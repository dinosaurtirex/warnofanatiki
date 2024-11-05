@echo off
set GAME_NAME=WARNO

for %%* in (.) do set CurrDirName=%%~nx*
..\..\%GAME_NAME%.exe -headless -uploadmod "%CurrDirName%" CommonData:Clusters/Bootstrap/ClusterBootstrapUploadMod.ndf
..\Utils\Python\python.exe ..\Utils\Scripts\CreateModBackup.py -autoname
