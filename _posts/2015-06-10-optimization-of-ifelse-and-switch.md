---
layout : post
category : work
tags : [优化, 编程]
title : 优化ifelse和switch代码
---

## 概率高的放前面

## 嵌套Switch语句
概率高的放在一个switch

## 表驱动
最基本的解决办法就是把多个判断条件合成一个，也就是把若干个分支合成一个。但是在大多数情况下，条件判断的分支都是无法合并的。所以，我们需要把这个变化点通过别的途径封装起来，而不是采用if-else。

## Map
if-else的变化点使用Map的get方法来代替

## 枚举

## 多态
