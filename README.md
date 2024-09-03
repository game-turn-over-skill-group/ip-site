# ip-site
支持：[windows 10]

简化curl命令 使用ip [x.x.x.x]查询 IP地址归属地 (默认查询本机公网IP)

<br>命令<code>[ip www.github.com]</code>效果：</br>
<p><a href="https://wx2.sinaimg.cn/mw1024/0066ebxvgy1flk5y1o6gqj30bc060tbg.jpg" target="_blank"><img src="https://wx2.sinaimg.cn/mw1024/0066ebxvgy1flk5y1o6gqj30bc060tbg.jpg" alt="" style="max-width:60%;"></a></p>

# code（代码）
如果你系统已经 安装了curl命令 只需提取ip+ip6.cmd命令即可


# 关于命令显示乱码的问题:
先将cmd添加到开始菜单目录 （或者每次 手动输入：chcp 65001）
开始菜单目录：```C:\Users\Administrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools```

然后修改cmd命令行的 快捷方式 如图：
<p><a href="https://github.com/game-turn-over-skill-group/ip-site/blob/cb0c29dfef313f51e0f1b48a285e645b89f2a5c6/%E7%8B%AC%E7%AB%8Bcurl%E6%BA%90%E7%A0%81/%E8%AE%BE%E7%BD%AE%E5%BC%80%E5%A7%8B%E8%8F%9C%E5%8D%95cmd%E5%91%BD%E4%BB%A4%E8%A1%8C%E5%BF%AB%E6%8D%B7%E6%96%B9%E5%BC%8F.jpg" target="_blank"><img src="https://github.com/game-turn-over-skill-group/ip-site/blob/cb0c29dfef313f51e0f1b48a285e645b89f2a5c6/%E7%8B%AC%E7%AB%8Bcurl%E6%BA%90%E7%A0%81/%E8%AE%BE%E7%BD%AE%E5%BC%80%E5%A7%8B%E8%8F%9C%E5%8D%95cmd%E5%91%BD%E4%BB%A4%E8%A1%8C%E5%BF%AB%E6%8D%B7%E6%96%B9%E5%BC%8F.jpg" alt="" style="max-width:100%;"></a></p>

%windir%\system32\cmd.exe /k chcp 65001

设置系统环境变量：
<p><a href="https://raw.githubusercontent.com/game-turn-over-skill-group/ip-site/master/code/%E8%AE%BE%E7%BD%AE%E4%BD%A0%E7%9A%84%E7%B3%BB%E7%BB%9F%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F.jpg" target="_blank"><img src="https://raw.githubusercontent.com/game-turn-over-skill-group/ip-site/master/code/%E8%AE%BE%E7%BD%AE%E4%BD%A0%E7%9A%84%E7%B3%BB%E7%BB%9F%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F.jpg" alt="" style="max-width:60%;"></a></p>


# 更新日志
~~最近ip.cn异常就大概2017.11.15号 开始 需要改hosts 这里不提供这个因为会过期 站长ping查找~~

~~2019年4月18日 修复ip.cn禁止curl请求的问题 (解决方法：更新其他域名)~~

~~2023年11月26日 新增ipv6地址查询地区请求（万事俱备 只欠东风 ip.zxinc.org）~~

2023年12月15日 简化ipv6地址查询IP请求 感谢微软AI-Copilot的帮助！

2024年06月05日 感谢ChatGPT帮忙完善 win10系统 jq命令的.js脚本

2024年09月03日 新增ip4新数据库 感谢微软AI-Copilot的帮助！

<p><a href="https://raw.githubusercontent.com/game-turn-over-skill-group/ip-site/150d93ac708838d15e9468018cac117a1d57b7f8/code/%E6%84%9F%E8%B0%A2%E5%BE%AE%E8%BD%AFAI-Copilot%E7%9A%84%E5%B8%AE%E5%8A%A9%EF%BC%81.png" target="_blank"><img src="https://raw.githubusercontent.com/game-turn-over-skill-group/ip-site/150d93ac708838d15e9468018cac117a1d57b7f8/code/%E6%84%9F%E8%B0%A2%E5%BE%AE%E8%BD%AFAI-Copilot%E7%9A%84%E5%B8%AE%E5%8A%A9%EF%BC%81.png" alt="" style="max-width:60%;"></a></p>

<p><a href="https://raw.githubusercontent.com/game-turn-over-skill-group/ip-site/9c61ce5360ef42c4fe4d3d9763c0355270b0f7c2/code/%E6%96%B0%E5%A2%9E%E6%8E%92%E7%89%88%E6%98%BE%E7%A4%BA.jpg" target="_blank"><img src="https://raw.githubusercontent.com/game-turn-over-skill-group/ip-site/9c61ce5360ef42c4fe4d3d9763c0355270b0f7c2/code/%E6%96%B0%E5%A2%9E%E6%8E%92%E7%89%88%E6%98%BE%E7%A4%BA.jpg" alt="" style="max-width:60%;"></a></p>

<p><a href="https://raw.githubusercontent.com/game-turn-over-skill-group/ip-site/master/code/%E5%BF%85%E9%A1%BB%E4%BD%BF%E7%94%A8https%E6%9F%A5%E8%AF%A2%3D%E5%8E%9F%E5%9B%A0%E6%9C%AA%E7%9F%A5.png" target="_blank"><img src="https://raw.githubusercontent.com/game-turn-over-skill-group/ip-site/master/code/%E5%BF%85%E9%A1%BB%E4%BD%BF%E7%94%A8https%E6%9F%A5%E8%AF%A2%3D%E5%8E%9F%E5%9B%A0%E6%9C%AA%E7%9F%A5.png" alt="" style="max-width:60%;"></a></p>


# 重要说明
本人并非作者 只是提出一个思路 由朋友帮忙实现和优化 并修复和维护

bat命令支持： <a href="https://www.feng.ee/">清风</a>  博客：https://www.zephyr.vip/

http技术支持：<a href="http://evansfix.com/">evansfix</a>  主页：http://www.evansfix.com/

ip查询：<a href="http://www.zxinc.org/index.htm">zx@zxinc.org</a>  主页：https://ip.zxinc.org/ipquery/
