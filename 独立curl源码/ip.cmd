<<<<<<< Updated upstream:独立curl源码/ip.cmd


@echo off

set ip=%1%

::查询ip归属地
curl www.evansfix.com/ip.php?ip=%ip%



::备用 查询ip归属地
::curl ip.zxinc.org/api.php?type=text&ip=%ip%


@echo off
=======


@echo off

set ip=%1%

::查询ip归属地
curl www.evansfix.com/ip.php?ip=%ip%



::备用 查询ip归属地
::curl ip.zxinc.org/api.php?type=text&ip=%ip%
::curl myip4.ipip.net
::curl 4.ipw.cn



@echo off
>>>>>>> Stashed changes:code/ip.cmd
