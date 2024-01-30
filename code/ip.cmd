

@echo off

set ip=%1%

::查询ip归属地
curl www.evansfix.com/ip.php?ip=%ip%



::备用 查询ip归属地
::curl ip.zxinc.org/api.php?type=text&ip=%ip%
::curl myip4.ipip.net
::curl 4.ipw.cn
::curl ipv4.ddnspod.com
::curl https://qifu-api.baidubce.com/ip/geo/v1/district?ip=%ip%
::curl https://ip.ddnspod.com/geoip/%ip%



@echo off