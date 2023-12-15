

@echo off


set ip=%1%

if "%1%"=="" goto MyIp


:GetIpv6
curl -s v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g" | awk '{print "IP/From："$0" \t "$3" "}'

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


::无排版 双行显示 IP+归属地
::curl -s v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g"
::无排版 双行显示 IP+归属地+速度显示
::curl v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g"


@echo off








