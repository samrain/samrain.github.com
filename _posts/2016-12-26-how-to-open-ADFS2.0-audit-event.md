---
layout : post
category : work
tags : [ADFS, 日志]
title : 开启AD FS 2.0 的审计日志
---

# why
防止人为或者自动方式恶意登录其他人账号或暴力破解密码。

# how
当生产环境上有人多次输错密码时，记录进审计日志中。而后由其他服务把记录转存到数据库中。


1. 单击【开始】，指向【程序】，指向【管理工具】，然后单击【本地安全策略】。

2. 导航到文件夹【Security Settings\Local Policies\User Rights Management 】，然后双击【Generate security audits】生成安全审核。

3. 在【本地安全设置】选项卡上，验证 AD FS 2.0 服务帐户是否列出。如果它不存在，请单击【Add User or Group】将其添加进列表中，然后单击确定。

4. 使用管理员权限运行以下命令来启用审核。

	`auditpol.exe /set /subcategory:"Application Generated" /failure:enable /success:enable`

	注意：如果是中文windows，先用 `auditpol /list /subcategory:*` 看子目录有那些，然后运行

	`auditpol.exe /set /subcategory:"已生成应用程序" /failure:enable /success:enable`

5. 关闭【本地安全策略】

6. 单击【开始】，指向【程序】，指向【管理工具】，然后单击【 AD FS 2.0 管理】，打开 AD FS 2.0 管理管理单元。

7. 在【操作】窗格中，单击【Edit Federation Service Properties】。

8. 在【Edit Federation Service Properties】中，单击【事件】选项卡。

9. 在【成功审核】和【失败审核】的复选框上打钩。

10. 单击确定。
