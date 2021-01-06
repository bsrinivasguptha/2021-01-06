@echo OFF

powershell Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
powershell -File ./get_system_information.ps1