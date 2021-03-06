---
layout : post
category : study
tags : [云计算, 云存储, 阿里云, 架构]
title : 基于阿里云搭建服务平台架构图
date : 2015-03-02
---

基于阿里云服务平台实施的，如下所示：

![基于阿里云搭建服务平台架构图](http://samrain.qiniudn.com/基于阿里云搭建服务平台架构图.png)


# 阿里云服务

1. 采用SLB（Server Load Balance，负载均衡）作为Web集群访问入口，负责为Web端的多台服务器进行流量分发。SLB是基于集群建设的，并且可以随时变配，按量付费。它不仅为我们实现了成熟的负载均衡方案，其稳定性与灵活性也为Web集群提供了更多可能。
2. 后端配置多台ECS（Elastic Compute Service，云服务器）实例，将主要应用服务都部署在ECS上。除了可弹性扩容这一特性，ECS提供的安全防护和快照备份为服务器安全和容灾提供了非常成熟的解决方案，这恰恰是我们这种业务型创业团队积累相对最薄弱的方面。另外，ECS多线接入骨干网络能保证网络的稳定和性能，使得任何网络的用户访问应用服务都非常顺畅。
3. DB集群由多台RDS（Relational Database Service，关系型数据库服务）实例组成。RDS是云数据库，简单易用，使用方法与自行部署的数据库完全一样。其成熟的双机热备与底层资源隔离，保证了我们这两年来数据库的平稳运行。另外，强大的iDB Cloud控制台、专业的DBA团队支持，为我们监控数据库运行状况、定位和解决数据库问题，提供了非常多的建议和帮助。
4. 集群之间的共享资源统一存放在OCS（Open Cache Service，开放缓存服务）中。我们用OCS来存放数据路由和实时性不高的业务数据。缓存作为我们架构性能中非常重要的一个环节，在承受了来自整个集群各方面压力的同时，还要保证响应稳定高速。


# 优势

1. 便利的服务器弹性升级功能，可随时应付像“双十一”这样的大促。而通过使用传统IDC托管模式，物理机的维护、升级以及升级后的数据迁移都是比较头疼的。

2. 成熟可靠的数据备份与快照、数据库主从分离与同步的底层方案。团队无须承受自己造轮子的代价，可专注于业务开发。

3. 云计算产品经过检验、值得信赖的安全防护。

4. 精简了创业团队人员规模。云计算平台具备专业的技术支持与服务，使得团队不再需要数据库和服务器管理员。

# 费用
### 总计 2868.2元/年
1. SLB
0.02*24*365=175.2元（一个实例一年费用）
0.96*3*365= 1051.2元（3Mbps一年费用）
2. ECS
- WEB Serv 32*10+0.3*5*10=320+15=335元（1核512M内存 一年费用 5G数据盘）
- APP Serv 85*10+0.3*5*10=850+15=865元（1核2G内存 一年费用 5G数据盘）
3. RDS
MySQL(版本5.1或5.5或5.6) 398元（240M内存 1G数据 一年费用）
4. OCS
0.04*0.125*24*365=43.8元（128MB容量 峰值吞吐量2MB/s 峰值qps2000次/秒）
