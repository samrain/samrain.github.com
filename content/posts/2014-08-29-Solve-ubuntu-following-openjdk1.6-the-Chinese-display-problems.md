---
layout : post
category : work
tags : [中文显示, openjdk1.6]
title : 解决ubuntu下面的openjdk1.6的中文显示问题
date : 2014-08-29
---

一开始按照网上的指导，去找到目录“/usr/lib/jvm/java-6-openjdk/jre/lib”，发现里面没有目录fonts，但是发现配置文件“fontconfig.properties”，于是想自己改改看吧，必须用管理员权限：`sudo gedit fontconfig.properties`
修改了其中`# Chinese fonts`下面的代码，改好后是这样的：

<pre>
allfonts.umingcn=WenQuanYi Zen Hei
#allfonts.umingcn.motif=AR PL UMing CN
allfonts.uminghk=WenQuanYi Zen Hei
#allfonts.uminghk.motif=AR PL UMing HK
allfonts.umingtw=WenQuanYi Zen Hei
#allfonts.umingtw.motif=AR PL UMing TW
allfonts.wqy-zenhei=WenQuanYi Zen Hei
#allfonts.wqy-zenhei.motif=WenQuanYi Zen Hei
allfonts.shanheisun=WenQuanYi Zen Hei
#allfonts.shanheisun.motif=AR PL ShanHeiSun Uni
</pre>

然后运行
`sudo mkfontdir`
`sudo mkfontscale`
运行`thinkingrock`发现还是方块字。

然后再次修改这个文件，搜索关键字`Wen`，结果发现如下配置串`filename.WenQuanYi_Zen_Hei=/usr/share/fonts/truetype/wqy/wqy-zenhei.ttf`，我去这个目录发现没有这个文件，只有扩展名为ttc的文件存在。于是将该处改为`filename.WenQuanYi_Zen_Hei=/usr/share/fonts/truetype/wqy/wqy-zenhei.ttc`
然后运行`sudo mkfontdir`
`sudo mkfontscale`

再启动`thinkingrock`一切ok。
