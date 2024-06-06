

@echo off


set ip=%1%

if "%1%"=="" goto MyIP

curl -s v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g" | awk '{print "IP/From："$0" \t "$3" "}'

goto End

:MyIP
curl myip6.ipip.net
goto End


:End






::备用 获取ipv6地址
::curl https://v6.ip.zxinc.org/getip
::curl https://v6.ipv6-test.com/api/myip.php
::curl http://api-ipv6.ip.sb/ip
::curl https://6.ipw.cn
::curl https://api64.ipify.org/?format=text
::curl https://myip6.ipip.net
::curl http://ipv6.ddnspod.com
::curl https://ip.guide/%1%
::curl https://qifu-api.baidubce.com/ip/geo/v1/ipv6/district?ip=%1%
::curl https://ip.ddnspod.com/geoip/%1%


::无排版 双行显示 IP+归属地
::curl -s v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g"
::无排版 双行显示 IP+归属地+速度显示
::curl v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g"
::排版后 整合显示 IP+归属地
::curl -s v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g" | awk '{print "IP/From："$0" \t "$3" "}'


@echo off








