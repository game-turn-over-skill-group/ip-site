

@echo off

:: 让控制台使用utf-8编码
chcp 65001 >nul

rem 输出调试路径
:: echo 当前路径: %cd%
:: echo 脚本所在路径: %~dp0
:: echo 系统环境变量：%PATH%

:: 获取第一个参数作为 IP 地址
set ip=%1

:: 判断 IP 是否为空
if "%ip%"=="" (
    rem 如果 IP 为空，优先使用 IPv6 的 API
    :: echo The IP address is: null
    set query_url=https://ip.ddnspod.com/geoip2/
) else (
    :: 判断是否包含 : 符号（IPv6 地址）
    echo %ip% | findstr /C:":" >nul
    if not errorlevel 1 (
        :: echo The IPV6 address is: %ip%
        set query_url=https://ip.ddnspod.com/geoip2/%ip%
    ) else (
        :: 判断是否包含 . 符号（IPv4 地址）
        echo %ip% | findstr /C:"." >nul
        if not errorlevel 1 (
            :: echo The IPV4 address is: %ip%
            set query_url=https://ip.ddnspod.com/geoip/%ip%
        ) else (
            :: 如果不是 IPv4 或 IPv6 地址
            echo Invalid IP address: %ip%
            exit /b 1
        )
    )
)

::查询ip归属地

:: 获取 JSON 数据并存储到临时文件
::curl -s https://ip.ddnspod.com/geoip/%1 > temp.json
curl -s %query_url% > temp.json

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