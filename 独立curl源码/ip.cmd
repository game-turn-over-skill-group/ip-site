@echo off
set ip=%1%
.\msys2_curl\curl www.evansfix.com/ip.php?ip=%ip%
