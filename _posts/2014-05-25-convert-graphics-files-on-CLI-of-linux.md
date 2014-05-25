---
layout : post
category : tech
tags : [Linux, CLI, 转换, 图形文件, 命令行]
title : 转换图形文件在linux命令行方式
---

## 安装[ImageMagick](http://www.imagemagick.org/ "官网")

## 将当前目录下的图片文件按照文件名排序后合成pdf
`convert *.png out.pdf`

## 缩小文件尺寸
`convert -resize 50%x50%  *.jpg`
