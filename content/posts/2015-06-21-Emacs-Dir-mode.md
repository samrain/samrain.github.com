---
layout : post
category : work
tags : [Emacs, mode]
title : Emacs Dir mode
date : 2015-06-21
---

## 常用快捷键

- `c-x d` 或`c-x f` 进入Dir mode
- `h`或`c-h m`显示帮助信息
- `p`或`c-p` ↑ 向上移动
- `n`或`c-n`或`space` ↓ 向下移动
-  `v` 预览文件/文件夹并设为只读
-  `q` 退出预览
- `s` 改变排序规则（循环变化），总共两种：by name/date。
- `f`或`enter`编辑文件内容
- `d` 一个个给文件加上待删除标志
- `m` 一个个给文件加上待操作标志
- `u` 一个个给文件撤消待操作标志
- `U` 清空所有文件的待操作标志
- `x` 批量删除被设置过标志的文件
- `D` 删除当前文件
- `C` 复制文件
- `R` 重命名/移动文件
- `Z` 压缩/解压
- `w` 复制文件名
- `y` 给出文件类型信息 (通过 file 命令)
- `t` 对当前buffer标记状态互换，比如总共有5个文件，2个被标记，互换后就是3个被标记
- `!`或`X` 对当前文件执行shell命令
- `&` 异步执行一条shell命令
- `+` 创建子目录
- `%m`,`%d`,`%u` 用正则表达式来执行命令
- `**` 标记所有可执行文件
- `*.` 标记所有同扩展名文件
- `*/` 标记所有目录
- `g` 刷新目录
- `C-/`, `C-_`, `C-x u` undo
- `M-{`,`M-}` 已标记的文件之间移动
- `c-x c-j` 跳转到当前文件所在目录
- 先输入一个数字再输入以上快捷键，可以批量处理多个文件

## 配置文件修改

<pre>
;; 设置文件管理器Dired
(setq dired-recursive-deletes t) ; 可以递归的删除目录
(setq dired-recursive-copies t) ; 可以递归的进行拷贝
(global-set-key "\C-x\C-j" 'dired-jump) ; 通过C-x C-j跳转到当前目录
(require 'dired-x) ; 有些特殊的功能
(setq dired-guess-shell-alist-user
'(("\\.chm$" "xchm")
  ("\\.jpg$" "gimp")
  ("\\.png$" "gimp")
  ("\\.bmp$" "gimp")
  ("\\.asf$" "mplayer")
  ("\\.wmv$" "mplayer")
  ("\\.htm$" "chromium-browser")
  ("\\.html$" "chromium-browser")
  ("\\.mpg$" "mplayer")
  ("\\.pdf" "evince"))) ; 设置一些文件的默认打开方式，此功能必须在(require 'dired-x)之后 
</pre>
