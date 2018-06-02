---

layout : post

category : tech

tags : [git, 版本控制系统, 在线代码托管, 个人博客, 建博客]

title : 通过Github建博客
date : 2012-12-10

---

[思维导图文件下载](https://docs.google.com/open?id=0B1DrsqrLRzeIRVczRmZtRV85RFk)

# [登录Github](https://github.com)

# [创建repo](https://github.com/new)

- 名字必须是$username$.github.com

# [创建disqus帐号](http://disqus.com/admin/register/)
	Site URL = $username$.github.com
	shortname = $username$blogbygithub
	Site Name = $username$-blog-by-github

# Install Jekyll-Bootstrap

- git clone git@github.com:samrain/template4blog.git $username$.github.com

- cd $username$.github.com

- edit _config.yml

`title : 你的博客名称`
`name : 你的姓名`
`email : 你的邮箱`
`github : https://github.com/$username$/`
`production_url : http://$username$.github.com`
`short_name : 你在disqus上注册用户的短名`

- git remote set-url origin git@github.com:$username$/$username$.github.com.git

- git push origin master

# [看看你的网站](http://$username$.github.com)

# 新建一条博文

- Github允许用md或者html文件，本文只介绍使用Jekyll生成blog，所以只使用md文件

- md文件请放在目录_posts下

- md文件中`---`包围的是文件生成信息

            layout指的是用那个模版，默认都是post

            category:目录名称，按照个人喜好随意

            tags:标签清单，中括号包围，中间用逗号和空格隔开

- md文件下面是正文，必须符合[Markdown语法](http://samrain.github.com/tech/2012/11/22/Markdown-Grammar)

- 最后别忘记上传到[Github](http://samrain.github.com/tech/2012/11/27/Simple-to-use-Github)

- 如果文件没有错误那么1分钟后就能看见你的新博文

- [参考文件_posts/2012-12-11-the-first-blog.md](https://github.com/samrain/template4blog/blob/master/_posts/2012-12-11-the-first-blog.md)