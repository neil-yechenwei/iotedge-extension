@echo on

:: Update powershell execution policy
powershell "Set-ExecutionPolicy Unrestricted -Force"

:: Install chocolately
powershell "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Install Nodejs && yo && iotedge module
choco install nodejs-lts -y
start /wait cmd /c "refreshenv && npm install -g yo && npm i -g yo generator-azure-iot-edge-module"

:: Install git
choco install git -y

:: Install vs code
choco install vscode -y

:: Install .Net Core SDK
choco install dotnetcore-sdk -y

:: Install jdk
choco install jdk11 -y

:: Install maven
choco install maven -y

:: Install python
choco install python --version 3.6.6 -y
SET "PATH=%PATH%;C:\Python36;C:\Python36\Scripts"

:: Install cookiecutter
pip install cookiecutter

:: Install iotedgehubdev
pip install iotedgehubdev

:: Install docker
:: It works on Azure Windows VM (Windows 10 Pro, Version 1809 with Standard D2 v3 (2 vcpus, 8 GB memory))
:: It also works on Azure Windows VM (Windows 10 Enterprise N (x64) with Standard D2 v3 (2 vcpus, 8 GB memory))
:: https://stackoverflow.com/questions/44817161/installing-docker-on-azure-virtual-machine-windows-10
choco install docker-for-windows --version 18.06.1.19507 -y

:: Restart computer
shutdown /r /f /t 5