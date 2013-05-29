---
layout : post
category : study
tags : [ppt工具, 酷]
title : 怎么使用impress.js
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIY3E3dDlmWDViM2s/edit?usp=sharing)

## [官网](https://github.com/bartaz/impress.js/)


### 缺点：许多细节都要自己指定，特别是页面宽度


### 优点：有全局的感觉，很炫


## 用法


### [官网指南](https://github.com/bartaz/impress.js/wiki/impress.js-tutorials-and-other-learning-resources)


### [DEMO](https://github.com/bartaz/impress.js/wiki/Examples-and-demos)


### 功能设置

- 在每张slide的div标签中设置以下属性
- data-x 沿着X轴移动的距离，负数表示向左移 
- data-y 沿着y轴移动的距离，负数表示向下移 
- data-z 沿着z轴移动的距离，负数表示向内移 
- data-scale 放大/缩小的比例，负数表示缩小
- data-rotate 用设置的度数旋转slide
- data-rotate-x 绕着X轴旋转，负数表示向后转
- data-rotate-y 绕着Y轴旋转，负数表示向右转
- data-rotate-z 绕着Z轴旋转

### 基础代码

- 一个html文件
- 在html中必须调用以及初始化impress.js
- 使用`id="impress"`的div
在其中每个slide写一个div，并且`class="step"`
- 模版代码
<script src="https://gist.github.com/samrain/5667757.js"></script>

## [在线制作](http://tantaman.github.com/Strut/dist/index.html)


### 作者的另一个网站，可以在线使用图形操作方式制作
