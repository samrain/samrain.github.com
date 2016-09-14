---
layout : post
category : study
tags : [BDD]
title :  BDD example
---

## 一般模式<a id="orgheadline21"></a>

Given
When
Then

## 例子<a id="orgheadline22"></a>

    添加图书到购物车并计算总额
    Given 书A价值30.5元
    And 书B价值25.8元
    When 我选择书A
    And 我点击了"添加到购物车"按钮
    Then 我应该看到书A在我的购物车里
    And 总价是30.5元
    When 我选择书B
    And 我第二次点击了"添加到购物车"按钮
    Then 我应该看到书A和书B都在我的购物车里
    And 总价是82.1元
