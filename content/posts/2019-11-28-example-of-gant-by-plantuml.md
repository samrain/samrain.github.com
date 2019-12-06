---
title: "甘特图范例"
date: 2019-11-28T13:59:13+08:00
tags: ["甘特图,plantuml"]
categories: ["work"]
draft: false
---

[![甘特图范例](https://pic.superbed.cn/item/5ddf634d8e0e2e3ee9dd1f6b.png)](https://pic.superbed.cn/item/5ddf634d8e0e2e3ee9dd1f6b.png)

# Plantuml源码如下：

```
@startgantt 甘特图范例
saturday are closed
sunday are closed


Project starts the 2019/08/19
-- 分析设计阶段 --
[需求分析] as [t1]  on {李寻欢} lasts 2 days
[需求评审] on {周芷若}  happens at [t1]'s end
[概要设计] as [t2] on {李寻欢} lasts 3 days
[t2] starts at [t1]'s end
-- 开发阶段 --
[功能A] as [t3] on {李寻欢} lasts 3 days
[t3] starts at [t2]'s end
[功能B] as [t4] on {白发魔女} lasts 3 days
[t4] starts at [t2]'s end
[功能C] as [t5] on {研发甲} lasts 3 days
[t5] starts at [t2]'s end
-- 测试阶段 --
[功能测试] as [t6] on {李寻欢}{白发魔女} lasts 3 days
[t6] starts at [t5]'s end
[联调测试{李寻欢}] as [t7] lasts 1 days
[t7] starts at [t6]'s end
[测试评审] on {周芷若} happens at [t7]'s end
-- 上线阶段 --
[正式上线] as [t8]  on {李寻欢:50%}{周芷若:50%} lasts 1 days
[t8] starts at [t7]'s end
@endgantt

```