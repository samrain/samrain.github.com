---
layout : post
category : study
tags : [google, google calendar, import]
title : 怎样导入google日历
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIMk9lSzd0Q0trNjA/edit?usp=sharing)

## 使用csv文件，数据用逗号隔开


## 如果数据有多行，用双引号包围


## 第一行必须是如下


### Subject,Start Date,Start Time,End Date,End Time,All Day Event,Description,Location,Private


## 目前做法


### 1.从redmine上导出成csv文件

- 注意导出列只能是【主题】【开始日期】【计划完成日期】
- 导出界面上必须在【描述】打勾
- 我已经自定义查询【待导入google日历】

### 2.导入到google drive

- [我的模版](https://docs.google.com/spreadsheet/ccc?key=0AlDrsqrLRzeIdHJDaVB5RlBVSzM1ZDJWLXktaVE0SWc&usp=sharing)

### 3.在google drive上修改

- 将第二列和第三列数据左移一列
- 把描述移动到【Description】

### 4.下载为【CSV格式】


### 5.导入google日历

- 点击右上角齿轮标志>进入【设置】
- 点击【日历】
- 点击【导入日历】
- 选择刚下载好的文件，然后选择准备导入的日历
- 点击【导入】
- 系统提示成功表示导入成功