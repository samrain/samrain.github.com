+++
title = "非端项目简易流程"
date = 2024-12-18T07:33:15+08:00
tags = ["项目","流程"]
categories = ["work"]
draft = false
+++

生成的图片在此：https://kdocs.cn/l/cvxr13rl89eh
D2的代码在此：

```
title: "非端项目简易流程"
sales_opportunity: {
  shape: rectangle
  label: "销售获得商机"
}
sales_communication: {
  shape: rectangle
  label: "销售独立和客户交流"
}
opportunity_valid: {
  shape: diamond
  label: "商机是否靠谱?"
}
reject_customer: {
  shape: rectangle
  label: "回绝客户"
}
end: {
  shape: circle
  label: "结束"
}
standard_product_satisfy: {
  shape: diamond
  label: "标品是否满足客户需求"
}
follow_opportunity: {
  shape: rectangle
  label: "继续跟进商机"
}
collect_requirements: {
  shape: rectangle
  label: "售前整理客户需求"
}
confirm_requirements: {
  shape: diamond
  label: "客户是否确认需求"
}
evaluate_workload: {
  shape: rectangle
  label: "评估定开工作量和计划"
}
project_approval: {
  shape: diamond
  label: "立项审批是否通过"
}
bidding: {
  shape: rectangle
  label: "招投标"
}
sign_contract: {
  shape: diamond
  label: "是否签约"
}
production: {
  shape: rectangle
  label: "投产"
}
promotion: {
  shape: rectangle
  label: "推广"
}

sales_opportunity -> sales_communication
sales_communication -> opportunity_valid
opportunity_valid -> reject_customer: {
  label: "否"
}
reject_customer -> end
opportunity_valid -> standard_product_satisfy: {
  label: "是"
}
standard_product_satisfy -> follow_opportunity: {
  label: "是"
}
standard_product_satisfy -> collect_requirements: {
  label: "否"
}
collect_requirements -> confirm_requirements
confirm_requirements -> evaluate_workload: {
  label: "是"
}
confirm_requirements -> collect_requirements: {
  label: "否"
}
evaluate_workload -> project_approval
project_approval -> evaluate_workload: {
  label: "否"
}
project_approval -> follow_opportunity: {
  label: "是"
}
follow_opportunity -> bidding
bidding -> sign_contract
sign_contract -> production: {
  label: "是"
}
sign_contract -> end: {
  label: "否"
}
production -> promotion
promotion -> end
```
