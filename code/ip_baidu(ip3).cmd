

@echo off

set ip=%1%

::查询ip归属地

rem 获取 JSON 数据并存储到临时文件
curl -s https://qifu-api.baidubce.com/ip/geo/v1/district?ip=%1 > temp.json

rem 使用 jq 解析 JSON 数据，并提取出 country、prov 和 city 的值
jq -r ".data | \"IP/From: %ip% \nIP/From: \(.country // \"Unknown\") \(.prov // \"\") \(.city // \"\") \(.isp // \"\")\"" temp.json

rem 删除临时文件
del temp.json







::备用 查询ip归属地
::curl www.evansfix.com/ip.php?ip=%ip%
::curl ip.zxinc.org/api.php?type=text&ip=%ip%
::curl myip4.ipip.net
::curl 4.ipw.cn
::curl ipv4.ddnspod.com
::curl https://ip.ddnspod.com/geoip/%ip%
::curl https://qifu-api.baidubce.com/ip/geo/v1/district?ip=%ip%
::curl https://qifu-api.baidubce.com/ip/geo/v1/ipv6/district?ip=%1%



@echo off