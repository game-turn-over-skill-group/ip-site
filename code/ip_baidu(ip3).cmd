@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

:: 校验IP参数
if "%1"=="" (
    echo 用法: %0 [IP地址]
    echo 示例: %0 8.8.8.8
    pause
    exit /b 1
)

set "target_ip=%1"

:: 1. 请求API并保存JSON（精简请求头）
curl -s "https://qifu.baidu.com/api/v1/ip-portrait/brief-info?ip=!target_ip!" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0" -H "Accept-Encoding: gzip, deflate, br, zstd" -H "sec-ch-ua-platform: Windows" -H "sec-ch-ua: Not(A:Brand);v=8, Chromium;v=144, Microsoft Edge;v=144" -H "DNT: 1" -H "sec-ch-ua-mobile: ?0" -H "Origin: https://www.baidu.com" -H "Sec-Fetch-Site: cross-site" -H "Sec-Fetch-Mode: cors" -H "Sec-Fetch-Dest: empty" -H "Referer: https://qifu.baidu.com/?activeId=SEARCH_IP_ADDRESS&_frm=aladdin" -H "Accept-Language: zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6" -H "sec-gpc: 1" > temp.json

:: 2. 分步解析各字段（避开CMD引号转义坑）
for /f "delims=" %%a in ('jq -r ".data.country // \"Unknown\"" temp.json') do set "country=%%a"
for /f "delims=" %%b in ('jq -r ".data.province // \"\"" temp.json') do set "province=%%b"
for /f "delims=" %%c in ('jq -r ".data.city // \"\"" temp.json') do set "city=%%c"
for /f "delims=" %%d in ('jq -r ".data.isp // \"\"" temp.json') do set "isp=%%d"

:: 3. 拼接字段（自动忽略空值）
set "ip_info=!country!"
if not "!province!"=="" set "ip_info=!ip_info! !province!"
if not "!city!"=="" set "ip_info=!ip_info! !city!"
if not "!isp!"=="" set "ip_info=!ip_info! !isp!"
set "ip_info=!ip_info!数据中心"

:: 4. 输出最终格式
echo IP/From: !target_ip!
echo IP/From: !ip_info!

:: 5. 清理临时文件
del /q temp.json >nul 2>&1
endlocal




:: 免责申明: >nul
:: 百度API查询 已和谐过一次 加了请求来源限制，请勿用于商业用途/大量批量查询 >nul
:: 再次和谐 将不进行维护（届时肯定上KEY认证） 本人日常比较忙 用的少 偶尔用于确认IP归属地 多IP库对比 准确性 >nul
:: 对于个人 滥用 造成的一切后果 法律责任 与本人 无关 >nul
