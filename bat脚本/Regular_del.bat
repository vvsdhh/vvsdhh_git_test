@echo off 

SET Dir=C:\its\
REM ----------------下面开始清除日志和流文件----------------
forfiles /p %Dir% /s /m *.dat /d -2 /c "cmd /c del /a /q /f /s @Path"
forfiles /p %Dir% /s /m *.log /d -2 /c "cmd /c del /a /q /f /s @Path"
forfiles /p %Dir% /s /m *.klg /d -2 /c "cmd /c del /a /q /f /s @Path"
forfiles /p %Dir% /s /m *.syslog /d -2 /c "cmd /c del /a /q /f /s @Path"
REM ---------------清理完成---------------------------------
pause