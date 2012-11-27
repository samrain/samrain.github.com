---

layout : post

category : tech

tags : [git, 版本控制系统, 在线代码托管, 个人博客, 项目博客, 产品博客]

title : Github简单使用

---

[思维导图文件下载](https://docs.google.com/open?id=0B1DrsqrLRzeILXhqWG1tZmVYT28)

# [注册Github帐号](https://github.com/signup/free)

# [建立第一个项目](https://github.com/new)

# 配置本地计算机

- 检查现有的ssh key

        cd ~/.ssh

        如果显示“No such file or directory”,那么请执行第3步

- 备份和删除老key

        mkdir key_backup

        cp id_rsa* key_backup

        rm id_rsa*

- 生成新的SSH Key

        ssh-keygen -t rsa -C "samrainhan@gmail.com"

        看见提示就回车

        输入2遍加密串

- 复制文件id_rsa.pub中内容

- 到[Github帐户设置](https://github.com/settings/ssh)中粘帖到框“Key”中，然后点【Add key】

- 测试SSH Key

        ssh -T git@github.com

        如果看到以下情况输入“yes”

        The authenticity of host 'github.com (207.97.227.239)' can't be established. RSA key fingerprint is 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48. Are you sure you want to continue connecting (yes/no)?

        如果有输入框要求输入密码,那么输入以上设置的加密串

- 设置帐户

        git config --global user.name "Hanyu"

        git config --global user.email "samrainhan@gmail.com"

# 开始使用

- git clone git@github.com:username/projectname.github.com.git