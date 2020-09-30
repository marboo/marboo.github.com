## Method for Chrome安装指南

<!--
.. Author: your_name 
.. title:: this is the real title in Jekyll.
.. |date| date:: 2013-03-17 22:38:09
.. publish:: NO
..  This file is created from ~/.marboo/source/media/bin/default.init.rst
.. 本文件由 ~/.marboo/source/media/bin/default.init.rst 复制而来

.. contents:: 目录
-->

### 1.下载Chrome插件(安装方法在下面)

插件下载地址：<http://marboo.googlecode.com/files/marboo_v0.2.5.crx>

下载时请忽略下面的提示：

![ignore-warnning](/media/images/marboo/web-0.2/crx-install-8.jpg)

### 2.下载配置文件

<http://marboo.googlecode.com/files/marboo_templates_v1.zip>

### 3.解压缩到目录

#### *Windows用户*,7

* **XP用户**，解压缩到目录

        C:\Documents And Settings\[User Name]\marboo

* **Win7用户**: 解压缩到目录

        C:\Users\[User Name]\marboo

上述目录不存在的话手工建立

#### *Linux、Mac用户*

解压缩，将文件夹重命名为.marboo，放到主目录下：

    ~/.marboo

### 4.安装插件

#### 4.1 进入插件管理页面：

<img src="/media/images/marboo/web-0.2/crx-install-0.png" width="400px"/>


#### 4.2 将下载的crx文件拖入该页来安装：

<img src="/media/images/marboo/web-0.2/crx-install-1.png" width="550px"/>
<img src="/media/images/marboo/web-0.2/crx-install-2.png" width="400px"/>


安装完毕是这个样子滴：

<img src="/media/images/marboo/web-0.2/crx-install-3.png" width="600px"/>

PS: <small>“已启用”选择框可以用来重启Marboo，当Marboo没有反应的时候需要重新勾选一下来重启。</small>


### 目前实现的功能

* 左栏自动同步文件/目录的增删
* 双击左栏文件，调用本地编辑器编辑
* 右栏实时预览markdown文件
* 代码语法高亮
* 扩展

### Marboo微群

[http://q.weibo.com/1656864](http://q.weibo.com/1656864)

### 常见问题

**如果修改文件后页面没有更新，请尝试在页面空白处点右键，选择“重新载入框架"**

<img src="/media/images/marboo/web-0.2/crx-install-7.png" width="200px"/>

#### 左栏为空

1. 确保已经 初始化配置

2. 右键，审查元素，点左下角第二个图标，进入javascript控制台

首先确认插件是否正确加载：

预期结果（看到TypeError莫惊慌）：

    > mbo.core()
      "TypeError"

可能出现的错误结果：

    > mbo.core()
      <object id="marboo-core" type="application/x-marboo" width="0" height="0" ></object>

解决方法：联系amoblin。

其次确认Marboo的目录：

    > mbo.core().root
      "C:\Documents and Settings\Administrator/marboo/build"

若执行结果里面的marboo路径和 初始化配置 里面的marboo路径不符，那么将配置文件转移到这里的marboo路径下即可。

最后确认listDir函数正常工作：

    > mbo.core().listDir("/")
      [ Object , Object , Object , Object , Object , Object , Object , Object ]

如果执行没有结果，请联系amoblin来进一步解决。

#### 右栏无法显示预览

请确认在插件管理页是否已勾选：允许访问文件网址。

#### 无反应

进入扩展程序管理页面，重新启动Marboo。

### Changelog

#### v0.2.5 2013-3-31 9:44

* 修复Windows下乱码问题

#### v0.2.4

* 优化UI
* 修复Windows下bug

#### v0.2.3

新增功能：

* 浏览器里快速笔记
* 支持大部分文件格式
* 性能大幅提升
* 新增幻灯片格式支持
* 网页剪辑(实验版)

<img src="/media/images/marboo/web-0.2/quick-note-2.png" width="500px"/>

### 运行要求

Google Chrome 25.0.1364.172 运行正常。低版本可能有问题。
