@echo off
set ip=%1%

if "%1%"=="" goto myipv6
.\msys2_curl\curl ip.zxinc.org/api.php?ip=%ip% 
goto nul

:myipv6
.\msys2_curl\curl http://v6.ipv6-test.com/api/myip.php

:nul
@echo off