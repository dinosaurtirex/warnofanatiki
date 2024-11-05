@echo off
for %%* in (.) do set CurrDirName=%%~nx*
..\Utils\Python\python.exe ..\Utils\Scripts\CreateAssetDefinitionFiles.py "%CurrDirName%"
