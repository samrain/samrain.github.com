---
layout : post
category : tech
tags : [Git, Git命令]
title : Git命令释义
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIRGFfRGdlYkJOU0k/edit)

## 基本操作


### init

- 初始化Git仓库
- 创建.git隐藏目录

### add

- add .
添加目录和子目录下所有文件
- add filename1 filename2
添加某些文件

### commit

- commit -m 版本更新说明
提交版本，并作简短说明
- commit
提交版本，系统弹出默认编辑器供编写版本更新说明

### config

- config --global user.name 姓名
自我介绍姓名
- config --global user.email 邮件
自我介绍邮件

### 本地Master重置到上一个版本

- `git reset --hard origin/master`

### 本地删除文件

- `git rm tags`

### 本地添加文件

- `git add calc.py`

### 本地确定完成

- `git commit -m "建立 源码目录及文档目录，并拷贝第一个程序进来"`

### 往github上传更新

- `git push origin <branch>`

### 开分支

- `git checkout -b branchname`

### 返回主分支

- `git checkout master`

### 编辑.gitignore


### clone


## 连接服务器上的git库，比如Github


- `git remote add origin <server>`


- `git pull origin master`
