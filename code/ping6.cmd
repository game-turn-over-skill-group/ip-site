@echo off
set ip=%1%
curl ip.zxinc.org/api.php?ip=%ip% & ping -6 %1%