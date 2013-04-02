---
layout : post
category : tech
tags : [软件开发, 文档, 命名, 规范]
title : 软件开发文档命名规范
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIUWJkd1RidGFsR0E/edit?usp=sharing)

## Why


统一规范便于管理


## Who


- 本部门员工

- 外包厂商员工


## What


规定之后部门及项目上的文档命名规范


## How


- 文件名规范：执行组织编码-项目代号-文档类型-姓名-版本号.xxx


- 均用小写字母，各部分用减号“-”来分隔


- 项目代号：YYSXXX，YY表示年份后两位；S表示是该年的第几个项目，从1到9，如果超过9那么以A到Z来扩展；XXX是项目缩写。如果是非特定项目，那么设为“000GNR”


- 文档类型：文档类型缩写，长度从2-5

    - 项目计划 PP Project Plan
    - 过程和产品质量保证计划 PPQAP Process And Product Quality Assurance Plan
    - 配置管理计划 SCMP Software Configuration Management Plan
    - 工作产品表 WP Work Product
    - 工作细分表 WBS Work Breakdown Structure
    - 任务描述单 TDF Task Description Form
    - 进度安排表 PS Project Schedule
    - 项目跟踪监控表 PT Project Tracking and oversight
    - 项目进展度量表 PM Project Measurement
    - 产品审批表 PAF Product Approval Form
    - 项目问题状态日志 PSL Problem Status Log
    - 风险分析表 RA Risk Analysis
    - 风险应对措施日志 RMAL Risk Mitigation Action Log
    - 项目变更申请 PCR Project Change Request
    - 个人每周状态报告（个人周报） WSR Weekly Status Report
    - 小组每周状态报告（小组周报） TWR Team Weekly Report
    - 项目每周状态报告（项目周报） PWR Project Weekly Report
    - 工作会议纪录 WMM Work Meeting Minutes
    - 配置项状态统计 CSA Configuration Status Accounting
    - 变更和问题状态日志 CPL Change & Problem Log
    - 配置变更请求单 CCR Configuration Change Request
    - 软件问题报告 SPR Software Problem Report
    - 配置审计报告 CMA Configuration Management Audit
    - 版本说明书 VDD Version Description Document
    - QA审计报告 QAAR Quality Assurance Audit report
    - QA检查单 CKL Checklists
    - 验收测试计划 ATP Software Acceptance Test Plan
    - 评审报告 RWR Review Report
    - 项目验收报告 PAR Project Acceptance Report
    - 项目开发总结报告 PDS Project Development Summary
    - 可跟踪矩阵 RTM Requirement Traceability Matrix
    - 软件需求分析 SRS Software Requirement Specification
    - 概要设计说明 HLD High Level Design
    - 详细设计说明 DDS Detailed Design Specification
    - 源代码 SCL Source Code List
    - 系统测试计划 STP System Test Plan
    - 集成测试计划 ITP Integration Test Plan
    - 单元测试计划 UTP Unit Test Plan
    - 系统测试用例 STC System Test Case
    - 集成测试用例 ITC Integration Test Case
    - 单元测试用例 UTC Unit Test Case
    - 单元测试报告 UTR Unit Test Report
    - 集成测试报告 ITR Integration Test Report
    - 系统测试报告 STR System Test Report
    - 发布测试结论 RTR Release-Test Report
    - 产品发布说明 RN Product Release Specification
    - 用户手册 UMF User Manual Final
    - 操作手册 OPM Operating Manual
    - 安装维护手册 SIM System Installation Manual
    - 用户培训手册 UTM User Training Manual

- 版本号

    - 处于“草稿”状态的文档的版本号格式为：0.YZ，YZ的数字范围为01～99。随着草稿的不断完善，“YZ”的取值递增
    - 处于“正式发布”状态的文档的版本号格式为：X.Y，X为主版本号，取值范围为1～9，Y为次版本号，取值范围为1～9。文档第一次“正式发布”时，版本号为1.0。如果文档的版本升级幅度比较小，只增大Y值，X值保持不变，只有文档版本升级比较大时，才增大X值
    - 文档处于“正在修改”状态时，其版本号格式为：X.YZ。文档正在修改时，只增大Z值，X.Y值保持不变。当文档修改完毕，状态重新成为“正式发布”时，将Z值设置为0，增加X.Y值

- 文档保存类型

如果不需要修改或者不允许修改的文档，必须以pdf格式保存;否则，以MS Office(97/2000/XP)的方式来保存