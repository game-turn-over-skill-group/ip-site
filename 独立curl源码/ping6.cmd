@echo off
set ip=%1%
.\msys2_curl\curl ip.zxinc.org/api.php?ip=%ip% & ping -6 %1%