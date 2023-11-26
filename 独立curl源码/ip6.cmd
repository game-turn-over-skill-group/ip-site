

@echo off


set ip=%1%

if "%1%"=="" goto FindIpAdd


:GetIpv6
:curl https://v6.ip.zxinc.org/getip


:FindIpAdd
curl v6.ip.zxinc.org/api.php?type=TYPE&ip=%1%
goto End


:End









::备用 获取ipv6地址
::curl https://v6.ip.zxinc.org/getip
::curl https://v6.ipv6-test.com/api/myip.php
::curl http://api-ipv6.ip.sb/ip



@echo off