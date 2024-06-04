

@echo off

set ip=%1%

:: 获取 JSON 数据并存储到临时文件
curl -s https://ip.ddnspod.com/geoip/%1 > temp.json

:: 使用 jq 解析 JSON 数据，并提取出 ipv4、ipv6 和 disp 的值
jq -r "\"IP/From: \(.ipv4 // .ipv6)\nIP/From: \(.disp // \"Unknown\")\"" temp.json

:: 删除临时文件
del temp.json






::备用 查询ip归属地
::curl www.evansfix.com/ip.php?ip=%ip%
::curl ip.zxinc.org/api.php?type=text&ip=%ip%
::curl myip4.ipip.net
::curl 4.ipw.cn
::curl ipv4.ddnspod.com
::curl https://qifu-api.baidubce.com/ip/geo/v1/district?ip=%ip%
::curl https://ip.ddnspod.com/geoip/%ip%



@echo off