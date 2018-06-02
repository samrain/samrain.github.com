---
layout : post
category : study
tags : [emacs, markdown, md, md2html]
title : 用Emacs编辑Markdown
date : 2013-09-10
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeITG03OXphM2R1eXc/edit?usp=sharing)

## Why


### 今日我终于又将编辑器从ST2换成了Emacs，主要原因就是ST2不支持linux上输入中文。但是之前在ST2编辑markdown文件非常爽，所以这个在emacs上必须有


## How


### Install

- 假定你的emacs的配置文件的目录为`~/.emacs.d`，以下简称ConfDir
- 下载文件[markdown-mode.el](http://jblevins.org/git/markdown-mode.git/plain/markdown-mode.el)到ConfDir
- 修改ConfDir/init.el，添加以下代码
    - `(autoload 'markdown-mode "markdown-mode" 	"Major mode for editing Markdown files" t) `
    - `(add-to-list 'auto-mode-alist '("\\.markdown\\'". markdown-mode)) `
    - `(add-to-list 'auto-mode-alist '("\\.md\\'". markdown-mode)) `
    - `;;;;设置emacs中打开url的工具是chromium，如果是其他浏览器那么替换掉名称。之前没有设置时会导致预览md转换成的html会直接用emacs打开而不是浏览器`
    - `(setq browse-url-browser-function 'browse-url-generic       browse-url-generic-program "chromium-browser") `
`;;;;如果是linux中,默认安装python，同时也会安装markdown_py命令用来将markdown转化为html，在这里使用了该命令来预览`
    - `(custom-set-variables  ;; custom-set-variables was added by Custom.  ;; If you edit it by hand, you could mess it up, so be careful.  ;; Your init file should contain only one such instance.  ;; If there is more than one, they won't work right.  '(markdown-command "markdown_py")) (custom-set-faces  ;; custom-set-faces was added by Custom.  ;; If you edit it by hand, you could mess it up, so be careful.  ;; Your init file should contain only one such instance.  ;; If there is more than one, they won't work right.  )`

### Use

- 预览`C-c C-c p`
- 在当前目录保存为html `C-c C-c e`

### 参考

- [网上搜索到的](https://www.evernote.com/shard/s11/sh/3b648e87-99ba-4b53-bb3c-c29612f7bb08/70120a0cf91f2cba180a86469d99416c)