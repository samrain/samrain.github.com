---
layout : post
category : work
tags : [Csharp]
title : CodeFile和CodeBehide的区别
date : 2016-07-11
---

## CodeBehind<a id="orgheadline19"></a>

指定包含与页关联的类的已编译文件的名称,编译完后所有cs中的代码打包进dll.该属性不能在运行时使用.提供此属性是为了与以前版本的 ASP.NET 的兼容，以实现代码隐藏功能。

## CodeFile<a id="orgheadline20"></a>

指定指向页引用的代码隐藏文件的路径。此属性与 Inherits 属性一起使用可以将代码隐藏源文件与网页相关联。此属性仅对编译的页有效。比如VS2005中新建一个网站你会发现编译比WEB应用程序慢很多,但是可以修改代码后不用整体编译刷新页面就可以看到效果.

对于开发时，即 页面的逻辑代码 cs 文件存在的时候，下属两种写法都没有问题。

    <%@ Page Language=”C#” AutoEventWireup=”true” Codebehind=”index.aspx.cs”  Inherits=”Community.IndexHomePage.index” %>
    
    <%@ Page Language=”C#” AutoEventWireup=”true” CodeFile=”index.aspx.cs” Inherits=”Community.IndexHomePage.index” %>

但是部署到站点后，我们不会部署 cs 文件，这时候，后一种写法就会报找不到文件的错误了。除非你把 cs 也部署出去，否则就会报编译时错误，找不到文件…
