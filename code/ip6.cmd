

@echo off

chcp 65001 >nul

set ip=%1

if "%1%"=="" goto MyIP

curl -s v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g" | awk '{print "IP/From："$0" \t "$3" "}'

goto End

:MyIP

curl -s v6.ip.zxinc.org/api.php?tpye=text | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g" | awk '{print "IP/From："$0" \t "$3" "}'

goto End


:End






:: 备用 获取ipv6地址
rem curl http://myip6.ipip.net
rem curl https://6.ipw.cn
rem curl http://api-ipv6.ip.sb/ip
rem curl https://v6.ip.zxinc.org/getip
rem curl https://v6.ipv6-test.com/api/myip.php
rem curl https://test.ipw.cn -6
rem curl https://ip.ddnspod.com -6
rem curl http://ipv6.ddnspod.com
rem curl https://api64.ipify.org/?format=text
rem curl -s https://ipvx.netart.cn/ | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}"
rem curl -s https://ipv6.netart.cn/ | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}"
rem curl https://ip.guide/%1%
rem curl https://ip.ddnspod.com/geoip/%1%
rem curl https://qifu-api.baidubce.com/ip/geo/v1/ipv6/district?ip=%1%
rem curl https://ipv6.netart.cn/%ip%
rem curl https://ipvx.netart.cn/%ip%


:: 无排版 双行显示 IP+归属地
rem curl -s v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g"
:: 无排版 双行显示 IP+归属地+速度显示
rem curl v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g"
:: 排版后 整合显示 IP+归属地
::rem curl -s v6.ip.zxinc.org/api.php?tpye=text^&ip=%1% | grep -oP "(?<=<query>).*?(?=</query>)|(?<=<location>).*?(?=</location>)" | sed "s/&#x9;//g" | awk '{print "IP/From："$0" \t "$3" "}'


@echo off








