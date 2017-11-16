@echo off
set ip=%1%
.\msys2_curl\curl ip.cn?ip=%ip%&ping %ip% 
