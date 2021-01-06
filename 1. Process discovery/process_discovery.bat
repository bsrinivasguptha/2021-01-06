@ECHO OFF

echo # All Processes > out.txt
echo # -------------------------------------------------  >> out.txt
powershell Get-Process >> out.txt



echo # All Services >> out.txt
echo # ------------------------------------------------- >> out.txt
sc query state=all >> out.txt


echo # Processes and services >> out.txt
echo # ------------------------------------------------- >> out.txt
tasklist /svc >> out.txt


echo # All Processes and DLLs >> out.txt
echo # ------------------------------------------------- >> out.txt
tasklist /m >> out.txt
