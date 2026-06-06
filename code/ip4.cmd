

@echo off
setlocal enabledelayedexpansion
set ip=%1

:: 查询ip归属地 >nul
:: 获取 JSON 数据并存储到临时文件 >nul
curl -s -4 https://ip.netart.cn/%ip% > temp.json

:: 使用 jq 解析 JSON 数据，提取需要的字段（新增subdivision+city）
jq -r "\"IP/From: \(.ip)\nIP/From: \(.registered_country.code) \(.registered_country.name) \(.regions[0] // \"\") \(.regions[1] // \"\") \(.regions[2] // \"\") \(.subdivision // \"\") \(.city // \"\") \(.as.name // \"\") \(.as.info // \"\")\"" temp.json | sed 's/null//g' | sed 's/  */ /g'

:: 删除临时文件
del temp.json >nul 2>&1
endlocal




::备用 查询ip归属地
::curl myip.ipip.net -4
::curl ip.sb -4
::curl test.ipw.cn -4
::curl ip.ddnspod.com -4
::curl ip.renfei.net -4
::curl ipv4.renfei.net
::curl ipv4.ddnspod.com
::curl https://ip.hkver.cn/ip
::curl check-host.net/ip
::curl -s https://ip.netart.cn/ | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}"
::curl -s https://ipv4.netart.cn/ | grep -oE "([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}" | head -n 1
::curl https://ipv4.netart.cn/%ip%
::curl https://ipv6.netart.cn/%ip%
::curl https://ip.netart.cn/%ip%
:;curl https://ip.hkver.cn/find/%ip%
::curl https://ip.ddnspod.com/geoip/%ip%
::curl ip.zxinc.org/api.php?type=text&ip=%ip%
::curl https://www.evansfix.com/ip.php?ip=%ip%




@echo off