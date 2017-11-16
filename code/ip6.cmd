@echo off
set ip=%1%

if "%1%"=="" goto myipv6
curl ip.zxinc.org/api.php?ip=%ip% 
goto nul

:myipv6
curl http://v6.ipv6-test.com/api/myip.php

:nul
@echo off