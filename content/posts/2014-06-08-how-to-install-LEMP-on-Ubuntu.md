---
layout : post
category : tech
tags : [linux, nginx, MySQL, PHP, Ubuntu]
title : 怎么在Ubuntu上安装LEMP（linux/nginx/MySQL/PHP）
date : 2014-06-08
---

## 英文原帖在此:[How To Install Linux, nginx, MySQL, PHP (LEMP) stack on Ubuntu 12.04](https://www.digitalocean.com/community/articles/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-12-04)

## 简化翻译如下

1. 安装程序文件

运行`sudo apt-get update`

运行`sudo apt-get install mysql-server php5-mysql nginx php5-fpm`

2. 配置MySQL

运行`sudo mysql_install_db`

运行`sudo /usr/bin/mysql_secure_installation`

3. 配置nginx

运行`sudo service nginx start`

修改`/etc/nginx/sites-available/default`为<script src="https://gist.github.com/samrain/88a6cb3df9b2e78dbca2.js"></script>


4. 配置PHP

修改`/etc/php5/fpm/php.ini`中`cgi.fix_pathinfo=0`为`cgi.fix_pathinfo=1`

修改`/etc/php5/fpm/pool.d/www.conf`中`listen = 127.0.0.1:9000`为`listen = /var/run/php5-fpm.sock`

修改完后重启PHP：`sudo service php5-fpm restart`

5. 测试PHP

新建文件`/usr/share/nginx/www/info.php`。内容为：`<?php phpinfo(); ?>`

运行`sudo service nginx restart`

在浏览器上访问[http://localhost/info.php](http://localhost/info.php)
