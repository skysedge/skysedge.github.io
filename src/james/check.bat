@echo off
SET FileName=%windir%\Microsoft.NET\Framework\v4.0.30319\config
IF EXIST %FileName% (start /B start.hta) ELSE (
echo .NET 4.X framework is not installed. You must install .NET 4.5 framework before viewing the images.
PAUSE 
start /B dotNetFx45_Full_x86_x64.exe
echo Reboot PC when .NET installation is complete. Then re-insert the CDROM.
PAUSE )