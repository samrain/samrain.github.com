---
layout : post
category : work
tags : [C#, 版本]
title : 配置AssemblyInfo.cs
---

其实等同于可以在VS上选择项目的属性，其中有个 ～{Assembly Information..}～ 按钮，单击后修改窗口上的值。

对于版本号AssemblyVersion，格式为 `“{Major}.{Minor}.{Build}.{Revision}”` 。

所以我们在配置时可以采用以下2种格式：

1.  `{Major}.{Minor}.*`

自动更新 ~{Build}.{Revision}～

1.  ～{Major}.{Minor}.{Build}.\*～

只更新 ～{Revision}～
