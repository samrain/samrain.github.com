---
layout : post
category : work
tags : [Git, 版本控制, 仓库图]
title : 在IIS6上开启gzip
date : 2015-06-02
---

IIS6上默认没有开启gzip，而IIS7以上则默认开启。因为gzip的功能实在是太好用了，可以极大提高网站性能。所以接下来让我们来尝试下开启gzip压缩。

1.打开压缩

双击IIS服务器，右键点击网站，点击属性，然后点击服务，我们看到HTTP压缩，然后在压缩应用程序文件，压缩静态文件中打钩，然后点击确定，第一步就完成了

![IIS6.0开启gzip压缩1](http://77g45f.com1.z0.glb.clouddn.com/IIS6.0开启gzip压缩1.jpg)

2.添加Web服务扩展

右键点击web服务扩展，点击添加一个新的web服务扩展，输入扩展名，为了便于我们识别，我们可以起名为gzip，然后点击添加，选择C:\WINDOWS\system32\inetsrv\gzip.dll，然后点击确定，扩展状态为允许，否则gzip不能生效，一切完成，我们就可以点击确定了.

![IIS6.0开启gzip压缩2](http://77g45f.com1.z0.glb.clouddn.com/IIS6.0开启gzip压缩2.jpg)

3.配置直接编辑配置数据库

双击IIS服务器，右键点击本地计算机，点击属性，在允许直接编辑配置数据库上打钩，那么我们不用关闭IIS就能直接配置服务器配置数据库配置文件了

![IIS6.0开启gzip压缩3](http://77g45f.com1.z0.glb.clouddn.com/IIS6.0开启gzip压缩3.jpg)

4.编辑IIS配置数据库配置文件。

修改C:\WINDOWS\system32\inetsrv\MetaBase.xml。搜索deflate,找到HcDoStaticCompression原来为false改为true,HcDynamicCompressionLevel原来为0，改为9，HcFileExtensions里面就可以添加我们需要压缩的后缀，这里添加的是静态文件，一般压缩html、js、css。图片和动态的文件不压缩（HcScriptFileExtensions标识需要压缩的动态文件）.配置完这个，我们要来配置下面的gzip，他们两个紧挨着的，配置方法相同.

![IIS6.0开启gzip压缩4](http://77g45f.com1.z0.glb.clouddn.com/IIS6.0开启gzip压缩4.jpg)

5.测试gzip是否起效。

[测试网站](http://tool.chinaz.com/Gzips/)

chrome中，打开F12开发工具，在【Network】中选择[Disable cache]然后刷新页面，任意选中其中一个静态文件，查下它的“Response Headers”中如果有`Content-Encoding:gzip`，那么证明已经开启成功。


