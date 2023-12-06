# ip-site
支持：[windows 10]

简化curl命令 使用ip [x.x.x.x]查询 IP地址归属地 (默认查询本机公网IP)

<br>命令<code>[ip www.github.com]</code>效果：</br>
<p><a href="https://wx2.sinaimg.cn/mw1024/0066ebxvgy1flk5y1o6gqj30bc060tbg.jpg" target="_blank"><img src="https://wx2.sinaimg.cn/mw1024/0066ebxvgy1flk5y1o6gqj30bc060tbg.jpg" alt="" style="max-width:60%;"></a></p>

# code
如果你系统已经 安装了curl命令 只需提取ip+ip6.cmd命令即可


# 关于命令显示乱码的问题:
先将cmd添加到开始菜单目录 （或者每次 手动输入：chcp 65001）
开始菜单目录：C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools

然后修改cmd命令行的 快捷方式 如图：
<p><a href="https://github.com/game-turn-over-skill-group/ip-site/blob/cb0c29dfef313f51e0f1b48a285e645b89f2a5c6/%E7%8B%AC%E7%AB%8Bcurl%E6%BA%90%E7%A0%81/%E8%AE%BE%E7%BD%AE%E5%BC%80%E5%A7%8B%E8%8F%9C%E5%8D%95cmd%E5%91%BD%E4%BB%A4%E8%A1%8C%E5%BF%AB%E6%8D%B7%E6%96%B9%E5%BC%8F.jpg" target="_blank"><img src="https://github.com/game-turn-over-skill-group/ip-site/blob/cb0c29dfef313f51e0f1b48a285e645b89f2a5c6/%E7%8B%AC%E7%AB%8Bcurl%E6%BA%90%E7%A0%81/%E8%AE%BE%E7%BD%AE%E5%BC%80%E5%A7%8B%E8%8F%9C%E5%8D%95cmd%E5%91%BD%E4%BB%A4%E8%A1%8C%E5%BF%AB%E6%8D%B7%E6%96%B9%E5%BC%8F.jpg" alt="" style="max-width:80%;"></a></p>

%windir%\system32\cmd.exe /k chcp 65001

设置系统环境变量：
<p><a href="https://raw.githubusercontent.com/game-turn-over-skill-group/ip-site/master/code/%E8%AE%BE%E7%BD%AE%E4%BD%A0%E7%9A%84%E7%B3%BB%E7%BB%9F%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F.jpg" target="_blank"><img src="https://raw.githubusercontent.com/game-turn-over-skill-group/ip-site/master/code/%E8%AE%BE%E7%BD%AE%E4%BD%A0%E7%9A%84%E7%B3%BB%E7%BB%9F%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F.jpg" alt="" style="max-width:60%;"></a></p>


# 重要说明
~~最近ip.cn异常就大概2017.11.15号 开始 需要改hosts 这里不提供这个因为会过期 站长ping查找~~

2019年4月18日 修复ip.cn禁止curl请求的问题 (解决方法：更新其他域名)
<p><a href="https://wx1.sinaimg.cn/mw1024/0066ebxvgy1g272xjz9dsj30h0023weh.jpg" target="_blank"><img src="https://wx1.sinaimg.cn/mw1024/0066ebxvgy1g272xjz9dsj30h0023weh.jpg" alt="" style="max-width:100%;"></a></p>

2023年11月26日 新增ipv6地址查询地区请求（万事俱备 只欠东风 ip.zxinc.org）

本人并非作者 只是提出一个思路 由朋友帮忙实现和优化 并修复

bat命令支持： <a href="https://www.feng.ee/">清风</a>  博客：https://www.zephyr.vip/

http技术支持：<a href="http://evansfix.com/">evansfix</a>  主页：http://www.evansfix.com/


