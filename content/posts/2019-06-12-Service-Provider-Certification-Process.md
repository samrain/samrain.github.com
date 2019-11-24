+++
title = "服务商认证流程"
date = 2019-06-12T22:31:20+08:00
tags = ["认证,服务商,流程"]
categories = ["work"]
draft = false
+++

[![服务商认证流程](https://pic.superbed.cn/item/5d0118ba451253d178250889)](https://pic.superbed.cn/item/5d0118ba451253d178250889.jpg)

```
@startuml
skinparam titleBorderRoundCorner 15
skinparam titleBorderThickness 2
skinparam titleBorderColor red
skinparam TitleFontSize 50
skinparam titleBackgroundColor Aqua-CadetBlue
title:服务商认证流程

|有意愿的专业技术服务商|
start
:提交申请表;
|渠道部区域负责人|
if(初审) then (不通过)
|渠道部区域负责人|
:通知不通过意见和理由;
|有意愿的专业技术服务商|
:收到通知决定是否继续申请;
end
else (通过)
|渠道部区域负责人|
:发给技术再次审核;
endif
|服务部区域负责人|
if(上门现场考核) then  (通过)
|有意愿的专业技术服务商|
:提供2名技术人员跟随学习2个月;
else(不通过)
|服务部区域负责人|
:通知现场考核不通过意见和理由;
|渠道部区域负责人|
:通知不通过意见和理由;
|有意愿的专业技术服务商|
:收到通知决定是否继续申请;
end
endif
|服务部区域负责人|
if(评审2名技术人员的技术能力和学习期间表现) then   (不通过)
|服务部区域负责人|
:通知现场考核不通过意见和理由;
|渠道部区域负责人|
:通知不通过意见和理由;
|有意愿的专业技术服务商|
:收到通知决定是否继续申请;
end
else (通过)
|服务部区域负责人|
:通知渠道部;
endif
|渠道部区域负责人|
if(决定是否和这家服务商签约) then (不通过)
|渠道部区域负责人|
:通知不通过意见和理由;
|有意愿的专业技术服务商|
:收到通知决定是否继续申请;
end
else (通过)
|渠道部区域负责人|
:通知签约;
endif
|有意愿的专业技术服务商|
:签约;
stop
floating note right: 定时参加培训，如果考试不过关，将会被取消服务商资格！、
@enduml
```