@ECHO OFF

echo Executing a command that will pop a Calculator
wmic process call create "cmd.exe /c calc"


echo Getting the processes on the host > out.txt
echo --------------------------------- >> out.txt
powershell Get-WmiObject -Class Win32_Process >> out.txt


