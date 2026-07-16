
@echo off

set ip=%1

:: 统一标准参数，方便后续修改
set "CURL_OPTS=-4 -m 10 --connect-timeout 5 --retry 2 -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36""

:: 传入IP参数，查询指定IP归属
if not "%1%"=="" (
    curl %CURL_OPTS% https://www.evansfix.com/ip.php?ip=%ip% || curl %CURL_OPTS% cip.cc/%ip%
    goto End
)

:MyIP
:: 无参数，查询本机出口IP，双站点容错
curl %CURL_OPTS% myip.ipip.net || curl %CURL_OPTS% cip.cc

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
::curl https://httpbin.org/ip
::curl check-host.net/ip
::curl -s https://ip.netart.cn/ | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}"
::curl -s https://ipv4.netart.cn/ | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}" | head -n 1
::curl cip.cc/%ip%
::curl https://ipv4.netart.cn/%ip%
::curl https://ipv6.netart.cn/%ip%
::curl https://ipvx.netart.cn/%ip%
:;curl https://ip.hkver.cn/find/%ip%
::curl https://ip.ddnspod.com/geoip/%ip%
::curl ip.zxinc.org/api.php?type=text&ip=%ip%
::curl https://www.evansfix.com/ip.php?ip=%ip%




@echo off