---
layout : post
category : family
tags : [游戏, 硬币]
title : 硬币游戏
---

## ① 1枚硬币×2人

规则：A 、 B 两人打算玩这么一个游戏。首先， A 选择一个长度为 n 的正反序列，然后 B 再选择另一个长度为 n 的正反序列。之后，不断抛掷硬币，哪名玩家所选的正反序列最先出现，哪名玩家就获胜。

> 当 n > 2 时，不管 A 选的 01 串是什么， B 总能有针对性地选择另一个 01 串，使得获胜概率可以高达 50% 以上。
> 以下是n = 3的时候模拟情况：

|如果 A 选的是|	那么 B 应该选|	两人的胜率之比|
|-|-|
|000|	100|	1:7|
|001|	100|	1:3|
|010|	001|	1:2|
|011|	001|	1:2|
|100|	110|	1:2|
|101|	110|	1:2|
|110|	011|	1:3|
|111|	011|	1:7|

## ② 谁先谁后轻松选

### 2人

掷一次硬币，将两种不同的结果（正、反）分别指派给每个人，掷出哪种结果就选哪个人

### 3人

掷两次硬币，将正正、正反、反正三种结果指派给三个人，如果掷出的结果是指定的结果之一，那么就选出对应的人；否则，如果运气不好掷出“反反”的话就重新开始另一轮硬币的投掷。

### 4人

掷两次硬币，将四种不同的结果（正正、正反、反正、反反）分别指派给每个人，掷出哪种结果就选哪个人

## ③ 尼姆游戏

将硬币分成几堆，然后两个人轮流取硬币，每次取硬币只能从同一堆中取出，枚数不限，但至少要取一枚，取走最后一枚硬币的就是赢家。

## ④ 大嘴巴游戏

一开始桌面上摆放着m×n的长方形硬币阵列（比如说5×7），两人轮流取硬币，每次指定桌面上剩下的硬币之一，然后将这枚硬币以及它右下方的所有硬币都取走（包括正右方与正下方），阵列左上方的硬币是特殊硬币，谁拿到手谁就输掉整场游戏。