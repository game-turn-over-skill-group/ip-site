

@echo off

set ip=%1%

::查询ip归属地

:: Cygwin64 控制台
::curl -s https://ipv4.netart.cn/%ip% | jq -r '.ip' | sed 's/^/IP\/From：/'
::curl -s https://ipv4.netart.cn/%ip% | jq -r '"IP/From：\(.registered_country.code) \(.registered_country.name) \(.regions[0]) \(.regions[1]) \(.regions[2]) \(.as.name) \(.as.info)"' | sed 's/null//g' | sed 's/  */ /g'

:: windows cmd 控制台
curl -s https://ipv4.netart.cn/%ip% | jq -r ".ip" | sed "s/^/IP\/From：/"
curl -s https://ipv4.netart.cn/%ip% | jq -r "\"IP/From：\(.registered_country.code) \(.registered_country.name) \(.regions[0]) \(.regions[1]) \(.regions[2]) \(.as.name) \(.as.info)\"" | sed 's/null//g' | sed 's/  */ /g'





::备用 查询ip归属地
::curl myip.ipip.net
::curl 4.ipw.cn
::curl test.ipw.cn -4
::curl ip.ddnspod.com -4
::curl ipv4.ddnspod.com
::curl https://ip.hkver.cn/ip
::curl -x http://127.0.0.1:42417 check-host.net/ip
::curl -s https://ipvx.netart.cn/ | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}"
::curl -s https://ipv4.netart.cn/ | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}" | head -n 1
::curl https://ipv4.netart.cn/%ip%
::curl https://ipv6.netart.cn/%ip%
::curl https://ipvx.netart.cn/%ip%
:;curl https://ip.hkver.cn/find/%ip%
::curl https://ip.ddnspod.com/geoip/%ip%
::curl ip.zxinc.org/api.php?type=text&ip=%ip%
::curl https://www.evansfix.com/ip.php?ip=%ip%
::curl https://qifu-api.baidubce.com/ip/geo/v1/district?ip=%ip%




@echo off