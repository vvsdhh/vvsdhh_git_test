@echo off 

SET Dir=C:\its\
REM ----------------���濪ʼ�����־�����ļ�----------------
forfiles /p %Dir% /s /m *.dat /d -2 /c "cmd /c del /a /q /f /s @Path"
forfiles /p %Dir% /s /m *.log /d -2 /c "cmd /c del /a /q /f /s @Path"
forfiles /p %Dir% /s /m *.klg /d -2 /c "cmd /c del /a /q /f /s @Path"
forfiles /p %Dir% /s /m *.syslog /d -2 /c "cmd /c del /a /q /f /s @Path"
REM ---------------�������---------------------------------
pause