---
layout : post
category : work
tags : [密码, 加密]
title : 加密密码
date : 2016-07-10
---

具体的做法就是在密码中加入一段"随机化"的字符串,然后再进行哈希化.这样就将原来的同样明文映射到同样密文的规则打乱了,其中混入的'随机'字符串就是所谓的'盐'.

在真正的工作中大多数人还是会犯下一些"错误",使我们的料加的并不好,比如:

-   "盐值"的长度太短(通常要和密文长度一样才行)或者"盐值"出现重复
-   哈希函数进行嵌套或者组合使用(非常重要的一点,别相信自己发明的某种加密方式,使用由密码学家研究出来的标准算法)
-   尽量避免使用已经过时或者低端的哈希函数,例如: MD5,SH1等,推荐SH256,SH512等等.
-   "盐值"的产生并不是一个随意的rand()函数,要使用基于加密的伪随机函数生成器,更加高度的随机性.