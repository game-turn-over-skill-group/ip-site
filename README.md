# ip-site
支持：[windows 10]
简化curl命令 使用ip [x.x.x.x]查询 IP地址归属地 (默认查询本机公网IP)

# code
独立curl源码 并非curl源码 而是命令源码+独立msys2中的curl命令+dll模块提取 

如果你系统已经 安装了curl命令 只需提取ip+ip6.cmd命令即可

关于命令显示乱码的问题:

先将cmd添加到开始菜单目录 （或者每次 手动输入：chcp 65001）
开始菜单目录：C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools

然后修改cmd命令行的 快捷方式 如图：

%windir%\system32\cmd.exe /k chcp 65001


<br>命令<code>[ip www.github.com]</code>效果：</br>
<p><a href="https://wx2.sinaimg.cn/mw1024/0066ebxvgy1flk5y1o6gqj30bc060tbg.jpg" target="_blank"><img src="https://wx2.sinaimg.cn/mw1024/0066ebxvgy1flk5y1o6gqj30bc060tbg.jpg" alt="" style="max-width:100%;"></a></p>

# 重要说明
~~最近ip.cn异常就大概2017.11.15号 开始 需要改hosts 这里不提供这个因为会过期 站长ping查找~~

2019年4月18日 修复ip.cn禁止curl请求的问题
<p><a href="https://wx1.sinaimg.cn/mw1024/0066ebxvgy1g272xjz9dsj30h0023weh.jpg" target="_blank"><img src="https://wx1.sinaimg.cn/mw1024/0066ebxvgy1g272xjz9dsj30h0023weh.jpg" alt="" style="max-width:100%;"></a></p>

作者<a href="https://www.feng.ee/">清风</a>博客：https://www.zephyr.vip/

感谢朋友：<a href="http://evansfix.com/">evansfix</a> 的技术支持 ：http://www.evansfix.com/
