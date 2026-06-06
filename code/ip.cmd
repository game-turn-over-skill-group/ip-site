

@echo off

set ip=%1%

::查询ip归属地

if "%1%"=="" goto MyIP

curl https://www.evansfix.com/ip.php?ip=%ip%

goto End

:MyIP
curl myip.ipip.net -4

:End




::备用 查询ip归属地
::curl myip.ipip.net -4
::curl ip.sb -4
::curl test.ipw.cn -4
::curl ip.ddnspod.com -4
::curl ipv4.ddnspod.com
::curl ip.renfei.net -4
::curl ipv4.renfei.net
::curl https://ip.hkver.cn/ip
::curl check-host.net/ip
::curl -s https://ip.netart.cn/ | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}"
::curl -s https://ipv4.netart.cn/ | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}" | head -n 1
::curl https://ipv4.netart.cn/%ip%
::curl https://ipv6.netart.cn/%ip%
::curl https://ipvx.netart.cn/%ip%
:;curl https://ip.hkver.cn/find/%ip%
::curl https://ip.ddnspod.com/geoip/%ip%
::curl ip.zxinc.org/api.php?type=text&ip=%ip%
::curl https://www.evansfix.com/ip.php?ip=%ip%




@echo off