
---
layout : post
category : work
tags : [C#, 编译]
title : C#编译小贴士
---

## 不想看到pdb文件<a id="orgheadline1"></a>

在编译时设置高级选项中 `Output - Debug info` 为 `None`

## Any CPU是什么意思<a id="orgheadline2"></a>

Visual Studio的编译选项 build下的platform有X64、Any CPU和x86。

-   X86表示只能在32位环境下运行
-   X64表示只能在64位环境下运行
-   Any CPU表示你的程序集可以根据环境变化适应32位还是64位。
