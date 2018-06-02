---
layout : post
category : work
tags : [生成帮助文档, js, 注释]
title : 导出js注释工具-JSDOC
date : 2015-02-04
---

## what
[官网在此](http://usejsdoc.org/)
[代码在此](https://github.com/jsdoc3/jsdoc/)

## install
```
sudo npm install -g git+https://github.com/jsdoc3/jsdoc.git
```

或者

```
npm install jsdoc@"<=3.3.0"
```

## how

JSDoc会从`/**`开头的注释中抽取信息。

标签就是一些以`@`开头的命令，所有标签用法见[这里](http://usejsdoc.org/#JSDoc3_Tag_Dictionary)

```
jsdoc where-is-js-files
```

访问[当前目录下`/out/index.html`](file:///当前目录/out/index.html)

## 使用docstrap美化界面

[官网在此](https://github.com/terryweiss/docstrap)，下载地址[戳这里](https://github.com/terryweiss/docstrap/archive/master.zip)

### 配置docstrap

修改文件`docstrap/template/jsdoc.conf.json`，文件在此：<script src="https://gist.github.com/samrain/b7776e691a66323fae37.js"></script>

### 编写首页内容

保存到README.md文件。（必须是md文件）

```
## why
让更多的人一起来做自己喜欢的网站

## what
前端框架

## how
js
```

### 制作tutorials

放其它的描述文档，比如总体介绍，背景说明，示例文档等。

必须先创建一个目录（名称不限，例子中用`tutorials`），然后把上述文档转成md文件后复制进改目录。（原则上所有扩展名为xml，xhtml，html，htm，md的文件都可以。）

最后生成的页面上会增加新菜单`tutorials`，菜单项默认是文件名。如果想要重新命名，那么必须要在这个目录下新建同名json文件，例如`README.json`,内容为

```
{
"title" : "首页"
}
```

如果文件很多，还可以将组织成嵌套菜单，这时每个文件都建同名json文件，只要新建一个json文件（比如也叫`README.json`）即可，内容如下：

```
{
"README":{
    "title" : "首页",
    "children" : {
	"a": {"title":"测试A"},
	"b": {"title":"测试B"}}
}
}
```

### 生成帮助文档

运行以下命令后访问[当前目录下`/out/index.html`](file:///当前目录/out/index.html)：

``` 
jsdoc where-is-js-files README.md -t where-is-docstrap/template -c where-is-docstrap/template/jsdoc.conf.json -u where-is-js-files/turorials
```
