---

layout : post

category : tech

tags : [git, 版本控制系统, 在线代码托管, 个人博客, 建博客]

title : 用Freemind写博客

---

[思维导图文件下载](https://docs.google.com/open?id=0B1DrsqrLRzeIdXZ1enJYbUNEV2M)

# What

- mm文件变成md文件

# Why

- 写作简单

- 发布简单

- 记忆简单

- 修改简单

# How

- 用Freemind写博客，然后保存成mm文件

- 上传到Google Drive上，然后共享给所有人，记录下分享URL

- git clone git@github.com:samrain/FreeMindTools.git FreeMindTools
cd FreeMindTools

- 修改conf4BlogListInGithub.py，在文件末尾增加一块

        mdfname:生成后的文件名，必须将年月日以及各个单词间用减号分隔开

        layout:使用模版名，一般不需要改

        category:目录名，请根据个人喜好修改

        tags:标签清单，用逗号分隔

        mmLink:在google drive上分享URL

- 修改mm2md.py

        mmdir:mm文件存放目录

        mddir:md文件存放目录

        mmFilename:mm文件名

- 运行mm2md.py

- 上传md文件到github上

- 浏览新博文