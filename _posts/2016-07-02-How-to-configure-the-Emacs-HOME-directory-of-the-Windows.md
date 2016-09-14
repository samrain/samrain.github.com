
---
layout : post
category : work
tags : [Emacs, 配置]
title : 如何配置Emacs在windows中的HOME目录
---

建议采用2或3

1.  如果设置了环境变量 ****HOME**** ，那么就用它的值作为HOME目录
2.  如果存在注册表键值 `HKCU\SOFTWARE\GNU\Emacs\HOME` ，就用它的值作为HOME目录
3.  如果存在注册表键值 `HKLM\SOFTWARE\GNU\Emacs\HOME` ，就用它的值作为HOME目录（和2的区别是，2只是针对当前用户的注册表路径，3则是针对所有用户）。如果存在 `C:\.emacs` ，就用 `C:\` 作为HOME目录~
4.  如果以上都不存在的话，就使用 `<system root>\Users\<user name>\AppData\Roaming` 作为HOME目录~（对于XP和较早windows用户，需要到 ～Documents and Settings～ 目录下去找）
