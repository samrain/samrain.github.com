---
layout : post
category : tech
tags : [VIM, python, IDE]
title : 如何把VIM变成Python IDE
---
[思维导图文件下载](https://docs.google.com/open?id=0B1DrsqrLRzeIaFMzZnJ4UWgwdEU)
## [原文链接](http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide)

## 简介

- [2008年的老文章](http://sontek.net/blog/detail/python-with-a-modular-ide-vim)

- 开发环境最重要的部分之一

        很容易的跨机器

- 用git来保存VIM配置

        autoload目录目的是用来自动载入插件Pathogen

        我们使用Pathogen来载入bundle目录中的其他插件

        让我们下载Pathogen然后放进autoload目录中

        为了启动时可以载入，我们需要在文件~/.vimrc中加入

        把我们计划使用的插件用submodules方式放进git仓库中

        git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git submodule add https://github.com/msanders/snipmate.vim.git bundle/snipmate
git submodule add https://github.com/tpope/vim-surround.git bundle/surround
git submodule add https://github.com/tpope/vim-git.git bundle/git
git submodule add https://github.com/ervandew/supertab.git bundle/supertab
git submodule add https://github.com/sontek/minibufexpl.vim.git bundle/minibufexpl
git submodule add https://github.com/wincent/Command-T.git bundle/command-t
git submodule add https://github.com/mitechie/pyflakes-pathogen.git
git submodule add https://github.com/mileszs/ack.vim.git bundle/ack
git submodule add https://github.com/sjl/gundo.vim.git bundle/gundo
git submodule add https://github.com/fs111/pydoc.vim.git bundle/pydoc
git submodule add https://github.com/vim-scripts/pep8.git bundle/pep8
git submodule add https://github.com/alfredodeza/pytest.vim.git bundle/py.test
git submodule add https://github.com/reinh/vim-makegreen bundle/makegreen
git submodule add https://github.com/vim-scripts/TaskList.vim.git bundle/tasklist
git submodule add https://github.com/vim-scripts/The-NERD-tree.git bundle/nerdtree
git submodule add https://github.com/sontek/rope-vim.git bundle/ropevim
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

## 基本的编辑和调试

- 代码折叠

        在~/.vimrc中添加

        然后就可以在方法内代码上输入'za'进行代码折叠和展开

- 窗口拆分

        有时代码折叠也不能解决问题

        打开多个窗口

        打开多个文件

        打开不同地方的同一个文件

        窗口拆分

        注意

        操作时必须切换中文输入法到英文模式

        不需要三个键同时按下，建议先按前2个键，然后再按后面一个键

        横向

        Ctrl+w+v

        纵向

        Ctrl+w+s

        关闭拆分窗口

        Ctrl+w+q

        切换窗口

        上

        Ctrl+k

        下

        Ctrl+j

        左

        Ctrl+h

        右

        Ctrl+l

        在~/.vimrc中添加

- 片段

        使用片段加速开发

        使用方法

        新建一个Python文件，然后输入“def”，然后敲击“Tab”键，将会将定义好的片段自动输入到界面上

        修改片段办法

        访问目录：～/.vim/bundle/snippets/snippets

        修改那种语言的就选择那种语言名称开头的文件

        例如：python.snippets

- 任务列表

        当前打开的文档中如果有以下字符串，会以嵌套窗口形式显示，并能直接导航到该行

        TODO

        FIXME

        使用方法

        打开文档

        敲击模式键，输入td打开窗口

        如果有todolist，那么打开窗口

        敲击“q”关闭

        否则提示没有

- 修订历史

        显示某个文件当前的所有修改记录

        注意：如果文件关闭，就看不到以往的修改记录

        使用方法

        敲击模式键，输入"g"打开窗口

        使用“j”和“k”在不同版本间移动

        使用“p”来显示不同之处

        使用回车，在右边窗口上显示不同版本的文件全部内容

        关闭如上

## 注意

- 目前模式启动键为“,”逗号

        在.Vimrc中是以“leader”表示

        可以在.vimrc中修改成其他键

## 语法高亮和验证

- PEP8

        检查静态代码是否符合规范

        使用方法

        敲击模式键，输入"8"打开窗口

        使用“j”和“k”在不同问题间移动

        关闭

        光标在下方窗口，然后Ctrl+w，然后q

- pyflakes

        显示未被使用的导入模块以及错误语法

        当光标移动到被红色标注行时在底部显示错误提示

        不需要按键启动，因为是一直启动的

## tab完成和文档

- SuperTab

        输入头几个字母，自动显示提示菜单

        当光标上下移动的时候，显示功能模块帮助信息

- pydoc

        显示功能模块的帮助信息

        如果想显示某个模块的帮助

        光标停留在模块名上

        敲击模式键，输入“pw”

        关闭输入“:q”

## 代码导航

- 缓冲区

        minibufexpl插件

        不要使用tab标签

        使用“:e文件名”新建buffer

        使用“:b数字”在不同buffer之间导航

        使用":b 文件名"在不同buffer之间导航

        可以只输入文件名的头几个字母，然后按“Tab”键

        看目前全部buffer

        输入":buffers"

        关闭使用":bd"或者":bw"

- 模糊文本文件搜索

        command-t插件

        在Ubuntu上预先安装Ruby和rake

        查询所有包含条件字符串的文件 

        当前目录下

        当前所有buffers下

        敲击模式键，输入“f”

        在底部出现新窗口

        输入查询条件自动查询当前目录下所有符合条件按的文件

        关闭只需要进入修改模式然后退出

        敲击ESC键，然后输入“i”，再敲击ESC键

- 文件浏览器

        NERDTree 插件

        敲击模式键，输入“n”

        一般情况下使用模糊文本文件搜索即可

- 重构和定义

        Ropevim插件

        在代码中导航

        支持自动插入重要过程，去定义点，重构和代码完成

        最常使用的2个方法

        快速跳转到方法或类的定义

        敲击模式键，输入"j"

        重命名东西，包括他们所有的引用上

        敲击模式键，输入"r"

        注意

        第一次使用有可能会提示：rope project root folder

        输入.ropeproject，然后输入0，然后回车

- 搜索

        Ack插件

        在Ubuntu上预先安装

        sudo apt-get install ack-grep

        搜索当前目录下内容中包含条件字符串的文件清单，并显示所在行号

        注意：

        要在~/.vimrc上添加一行

        let g:ackprg="ack-grep -H --nocolor --nogroup --column"

        原教程有误，报错找不到ack

## 整合使用Git

- 插件

        git.vim

        git配置文件语法高亮

        fugitive

        提供界面集成git功能

        diff

        status update

        commit

        moving

        告诉目前工作在那个分支上

        开始使用

        敲击模式键，输入“c”

        输入“:GXXXXX”

        Gedit

        Gsplit

        Gvsplit

        Gtabedit

        Gdiff

        Gstatus

        Gcommit

        Gblame

        Gmove

        Ggrep

        Glog

        Gread

        Gwrite

        Gbrowse

        关闭

        敲击模式键，输入“cc”

## 集成测试

- Django nose

        使用MakeGreen插件

        使用

        敲击模式键，输入“dt”

        在底部显示，如果通过就是绿色，否则是红色

- Py.test

        使用py.test插件

        使用

        敲击模式键

        输入“tf”

        测试某个文件

        输入“tc”

        测试某个类

        输入“tm”

        测试某个方法

        输入“tn”

        测试下一个

        输入“tp”

        测试上一个

        输入“te”

        测试错误

## Virtualenv

- vim无法判断我们在虚拟环境中

        Vim只能从安装过的库中找到自动完成代码

- 在.vimrc中添加代码

## Django

- 输出Django的项目配置，以便于自动完成代码

- 修改.vimrc

        export DJANGO_SETTINGS_MODULE=project.settings

## 随机提示

- 新的颜色样式到http://code.google.com/p/vimcolorschemetest/

## 默认安装