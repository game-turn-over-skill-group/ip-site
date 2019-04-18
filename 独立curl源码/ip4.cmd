@echo off
set ip=%1%
echo .\msys2_curl\curl www.evansfix.com/ip.php?ip=%ip%
