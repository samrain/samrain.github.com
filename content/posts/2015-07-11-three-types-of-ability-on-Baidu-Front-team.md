---
layout : post
category : work
tags : [前端, 编程语言, 百度, FIS]
title : （转）百度前端团队F.I.S 提倡的三种语言能力
date : 2015-07-11
---

有了这三种语言能力，你的团队前端工业化水平将有很大的提升。

##资源定位
获取任何开发中所使用资源的线上路径。

可以有效的分离开发路径与部署路径之间的关系，工程师不再关心资源部署到线上之后去了哪里，变成了什么名字，这些都可以通过配置来指定。而工程师只需要使用相对路径来定位自己的开发资源即可。这样的好处是 资源可以发布到任何静态资源服务器的任何路径上而不用担心线上运行时找不到它们，而且 代码 具有很强的可移植性，甚至可以从一个产品线移植到另一个产品线而不用担心线上部署不一致的问题。

##内容嵌入
把一个文件的内容(文本)或者base64编码(图片)嵌入到另一个文件中；

可以为工程师提供诸如图片base64嵌入到css、js里，前端模板编译到js文件中，将js、css、html拆分成几个文件最后合并到一起的能力。有了这项能力，可以有效的减少http请求数，提升工程的可维护性。fis不建议用户使用内容嵌入能力作为组件化拆分的手段，因为下面这个能力会更适合组件化开发。

##依赖声明
在一个文本文件内标记对其他资源的依赖关系；

为工程师提供了声明依赖关系的编译接口。fis在执行编译的过程中，会扫描这些编译标记，从而建立一张 静态资源关系表，它会被产出为一份 map.json 文件，这份文件详细记录了项目内的静态资源开发路径、线上路径、资源类型以及 依赖关系 和 资源打包信息，这样，使用fis作为编译工具的产品线，就可以将这张表提交给后端或者前端框架去运行时根据组件使用情况来按需加载资源或者资源所在的包，从而提升前端页面运行性能。