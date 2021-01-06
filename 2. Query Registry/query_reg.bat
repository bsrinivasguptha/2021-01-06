@ECHO OFF

echo # Get apps installed using Registry from Powershell > out.txt
echo # ------------------------------------------------- >> out.txt
powershell Set-ExecutionPolicy RemoteSigned -Scope CurrentUser >> out.txt
powershell -File ./apps_query_reg.ps1 >> out.txt >> out.txt


echo # Search registry for word password >> out.txt
echo # ------------------------------------------------- >> out.txt
reg query HKLM /f password /t REG_SZ /s >> out.txt


