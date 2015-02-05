---
layout : post
category : work
tags : [开源中国, 协作, 开发]
title : 怎么用开源中国的服务来进行协作和开发
---

## Getting Start
1. 注册oschina用户([戳这里](https://www.oschina.net/home/reg))
1. 登录oschina.net
1. 注册git@osc用户([戳这里](https://git.oschina.net/signup))，请选择`使用oschina账号登录`

![注册Git@OSC](http://samrain.qiniudn.com/使用oschina账号登录.jpg)

4.会提示以下画面，点击`连接`即可

![连接到oschina.net](http://samrain.qiniudn.com/连接.png)

## 如果你是管理员

### add team
- 建立在线团队
 ([戳这里](http://team.oschina.net/))输入`团队名`和`团队地址`(团队人数上限为20人，团队地址是唯一的，BTW，已经被抢了很多好的名字了。)
- 邀请成员
    - 进入以下页面 ([http://team.oschina.net/Team名称/teamset?catalog=member](http://team.oschina.net/Team名称/teamset?catalog=member))
    - 复制邀请链接转发给小伙伴们，邀请他们加入。
- 设置成员身份
    - 当小伙伴们都加入后，还是进入刚才的页面 ([http://team.oschina.net/Team名称/teamset?catalog=member](http://team.oschina.net/Team名称/teamset?catalog=member))
    - 点击每个小伙伴的`身份设置`，只有2个身份【管理员】和【普通成员】，一般都是设置普通成员。
- 填写其他内容。
> 此处略去500字。

### add git@OSC项目组

- 创建git@OSC项目组
进入以下页面([创建git@OSC项目组](http://git.oschina.net/teams/new))，输入项目组名称，点击【创建项目组】即可。
- 新增项目组成员
进入以下页面([http://git.oschina.net/teams/Team名称/members/new](http://git.oschina.net/teams/Team名称/members/new))添加用户

**注意：除了管理员外其他人最好设置为【观察者】**

### add repo

- 创建项目
进入以下页面([创建项目](http://git.oschina.net/projects/new))，输入项目信息点击【创建项目】即可。**（注意私可以转公，而公不能转私）。**
-  添加成员
点击`管理`->`项目组管理`->`指派项目组`，选择前面创建好的项目组点击`指派`即可。

![指派项目组](http://samrain.qiniudn.com/指派项目组.png)


## 如果你是小伙伴

### join team

- 首先要登录oschina.net（否则后续就会出现404错误）
- 点击邀请链接，按确定即可

### fork repo

- 首先要登录oschina.net（否则后续就会出现404错误）
- 进入项目页面，比如http://git.oschina.net/test-repo
- 在右上角有个`Fork`按钮，请点击它。系统复制项目到你的用户里。

![Fork](http://samrain.qiniudn.com/Fork.png)
