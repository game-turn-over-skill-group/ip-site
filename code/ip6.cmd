

@echo off


set ip=%1%

if "%1%"=="" goto MyIp


:GetIpv6
curl -s v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)|(?<=<local>).*?(?=</local>)"

goto End:


:MyIp
curl myip6.ipip.net
goto End


:End






::备用 获取ipv6地址
::curl https://v6.ip.zxinc.org/getip
::curl https://v6.ipv6-test.com/api/myip.php
::curl http://api-ipv6.ip.sb/ip
::curl myip6.ipip.net
::curl "https://api64.ipify.org/?format=text"
::curl 6.ipw.cn
::curl https://ip.guide/%1%


::包含网站访问速度测试 如果你需要 将这一条替换到上面去 即可
::curl v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)|(?<=<local>).*?(?=</local>)"


@echo off








