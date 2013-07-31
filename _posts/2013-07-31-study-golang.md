---
layout : post
category : study
tags : [golang, go program]
title : 学习golang
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIWWhKUnVDbTJJSUE/edit?usp=sharing)

## 安装


### Linux

- 检查安装包
debian/Ubuntu: sudo apt-get install bison gcc libc6-dev ed gawk make
- 获得最新代码
hg clone -r release https://go.googlecode.com/hg/ $GOROOT
[到网站上下载](https://go.googlecode.com/files/go1.0.3.src.tar.gz)
- 设置环境变量
    - GOROOT：Go安装目录
GOROOT=/home/rain/go
    - GOPATH：Go运行目录
export GOPATH=/home/rain/doc/mygo
    - PATH：环境目录
export PATH=$GOROOT/bin:$PATH
- 编译
cd $GOROOT/src
./all.bash

### windows

- [下载](http://code.google.com/p/go/downloads/list?q=OpSys-Windows+Type%3DArchive)
- 解压到C盘
- 设置环境变量
set PATH=%PATH%;C:\Go\bin

## 特色


### 清晰并且简洁


### 并行


### Channel


### 快速


### 安全


### 标准格式化


### 类型后置


### UTF-8


### 开源


### 开心


## Hello World


### package <something>开头

- 独立运行的程序必须以package main开头

### import <包名>


### func main()


## 构建


### 使用go工具，例如：go build helloworld.go


## 运行


### 直接运行，例如：./helloworld


## 变量


### var xxx 变量类型


### 默认赋值为该类型的null值


### 变量类型在变量名的后面


### 可以一步内完成声明和赋值，变量类型由值推演出来

- :=

### 可以用圆括号成组声明


### 可以在一行内完成声明，用逗号隔开


### 下划线是特殊变量名，表示任何赋给它的值都被丢弃


### 未使用的变量在编译时会报错


## 类型


### 布尔类型

- bool

### 数字类型

- int
根据硬件决定，32位上是32位
int8
int16
int32
int64
- uint
类似int
    - byte
uint8
uint16
uint32
uint64
- float32
- float64
- 混合使用要报错

## 常量


### const XXX=aaa


### 只能是数字、字符串或布尔值


### 在编译时被创建


### 可以用iota生成枚举值

- 第一个是0
- 下次使用增加1
- 第一个常量为iota，第二个省略默认也等于iota

### 可以用圆括号成组声明


## go env


### GOARCH

- Go编译器输出的程序的目标架构，3个可选：arm, 386, amd64 

### GOBIN

- 存放编译出来的命令（程序）的目录，对于GOPATH里面的，默认放到$GOPATH/bin下，GOROOT里面的  放到$GOROOT/bin下，如果$GOBIN设置了，则都放到$GOBIN下。

### GOCHAR

- 每个体系的编译器有一个字符表示，比如386是8，amd64是6，arm是5，这个一般不用管。  Plan 9工具链特点。

### GOEXE

- 可执行文件名的后缀，只在Windows下有用，设置成".exe"。

### GOGCCFLAGS

- 编译cgo的时候gcc编译的命令行参数。 

### GOHOSTARCH

- 当前运行Go工具链的系统架构，可选的值同上$GOARCH

### GOHOSTOS

- 当前运行Go工具链的操作系统，可选的值很多，linux, darwin, windows, freebsd, openbsd, netbsd, plan9等 

### GOOS

- 编译出来的目标程序在哪个操作系统上执行，可选的同上面的GOHOSTOS。

### GOPATH

- go开发目录

### GOROOT

- Go本身装在GOROOT下面

### GOTOOLDIR

- Go的工具链程序在这个目录下，一般也不用管，直接用go tool 8g这样就行了。

### CGO_ENABLED

- 是否使用cgo，可选值是1和0. 

## 中文参考


### [Go Web编程](https://github.com/astaxie/build-web-application-with-golang)


### [中文版《Go入门指南》](https://github.com/Unknwon/the-way-to-go_ZH_CN)


### [维基百科:go](http://en.wikipedia.org/wiki/Go_%28programming_language%29)


### [Go学习笔记](http://bbs.mygolang.com/thread-419-1-1.html)


### [Go语言标准库](https://github.com/polaris1119/The-Golang-Standard-Library-by-Example)


### [Go编程基础-视频](https://github.com/Unknwon/go-fundamental-programming)


### [学习Go语言](http://www.mikespook.com/learning-go/)


### [Go语言学习园地博客](http://blog.studygolang.com/)


### [Network programming with Go 中文翻译版本](https://github.com/astaxie/NPWG_zh)


### [Go语言文档](https://golang-china.googlecode.com/svn/trunk/Chinese/golang.org/index.html)


### [Go官方文档](http://bbs.studygolang.com/thread-18-1-1.html)


### [在GAE上使用go编程](http://progginator.lidian.info/#1)


## 英文参考


### [Learning Go](https://github.com/miekg/gobook)


### [go package doc](http://godoc.org/)


## [sublime text2扩展](https://github.com/DisposaBoy/GoSublime#readme)


## GBK和UTF8转换


### [许世伟iconv](https://github.com/qiniu/iconv)


### [mahonia](https://code.google.com/p/mahonia/)


## 注意


### 文件是Unix的基础，而文件的读写是基础中的基础


## [官网](http://golang.org/)


### 如果想翻过去，修改hosts增加2条：74.125.128.94        www.golang.org 74.125.128.94        golang.org


## 搭建自己的官网


### godoc -http 6060


### 访问http://localhost:6060/


## gosublime快捷键


### 快速查看可以import包情况

- Ctrl+点 然后 Ctrl+p