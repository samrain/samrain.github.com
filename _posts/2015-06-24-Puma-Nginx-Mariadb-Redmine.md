---
layout : post
category : work
tags : [Redmine, Nginx, Puma]
title : Puma+Nginx+Mariadb+Redmine
---

> 以下均在Ubuntu 1404.2 LTS 上运行过。
> redmine目录放在`/home/redmine`下。

## 1. Ruby

### install 基础库
```
sudo apt-get install git autoconf bison curl build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
```
### install rbenv

```
mkdir /home/redmine && cd /home/redmine
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

## 把rbenv加到shell的path中，然后重启shell
echo 'export PATH="/home/redmine/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL -l

## 检查rbenv是否ok
type rbenv
```

### install Ruby

```
## 看当前能安装的ruby版本
## 如果报没有install命令，可以查看下目录执行 .rbenv/plugins/ruby-build/install.sh安装
rbenv install -l

## 安装当前最新的稳定版本
## 比如2015-1-4时是2.2.0,但是由于后面使用redmine时有些插件报错，所以降级到2.1.5。编译超级慢，下载源码时有时会因为GFW无法下载，我后来用了土方法，重新启动。
rbenv install 2.1.5

## 设置ruby全局版本为这个
rbenv global 2.1.5
```

### check Ruby

```
## 确认下当前ruby版本号是否和设置的全局版本一致
ruby -v

## 如果不一致，那么执行以下2行代码
rbenv rehash
rbenv global 2.1.5
```

## 2. Mariadb
### 基础库
安装过程中会要求输入MariaDB的root用户密码

```
sudo apt-get install mariadb-server libmariadbclient-dev ImageMagick libmagickwand-dev
```



###  配置数据库

```
## 登录Mariadb
mysql -uroot -p

## 创建新库
CREATE DATABASE redm4coprize CHARACTER SET utf8;

## 创建数据库用户
CREATE USER 'user4coprize'@'localhost' IDENTIFIED BY '7ujm*IK<';

## 赋予它权限
GRANT ALL PRIVILEGES ON redm4coprize.* TO 'user4coprize'@'localhost';

## 离开数据库
\q
```

## 3. Redmine

### 下载代码

比如2014-12-20时是2.6.0，这个可以到[redmine官网](http://www.redmine.org/projects/redmine/wiki/Download#Stable-releases)上看到.

```
## 安装2.5.2版本
wget -c http://www.redmine.org/releases/redmine-2.5.2.tar.gz
tar -xf *.tar.gz && cd redm*
## 创建文件夹
mkdir -p tmp/pids tmp/sockets public/plugin_assets
## 修改文件夹权限
chmod -R 755 files log tmp public/plugin_assets
```

### 修改Gemfile文件

把第一行改为

> source 'https://ruby.taobao.org'

```
vi ~/redmine*/Gemfile
```

### 安装ruby组件

```
## 换gem源
gem sources --remove https://rubygems.org/
gem source -a https://ruby.taobao.org
gem source -c

## 安装bundler
gem install bundler
gem update
rbenv rehash

## 注意一定要先进入redmine的目录中
cd /home/red*/red*
bundle install --without development test postgresql sqlite

```

### 创建redmine基础数据

```
bundle exec rake generate_secret_token
bundle exec rake db:migrate RAILS_ENV=production 
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
bundle exec rake redmine:load_default_data RAILS_ENV=production REDMINE_LANG=zh
```

### 测试

访问[http://localhost:3000](http://localhost:3000),用户名和密码为admin/admin

```
ruby script/rails server webrick -e production
```

## 4. Puma

### install puma

```
## 下载puma配置
curl -Lo ~/redmine*/config/puma.rb https://gist.githubusercontent.com/samrain/4c92673990edfe5a215e/raw/7313da9e309de0def3e40e75913bc0bfbe7d1fa3/puma.rb

## 在Gemfile中添加puma配置项
echo 'gem "puma"' >> Gemfile

## 安装puma
gem update
rbenv rehash
cd /home/red*/red*
bundle install --without development test postgresql sqlite
rake generate_secret_token
RAILS_ENV=production rake db:migrate
```

### 创建服务并设置为自动启动

```
## 创建启动脚本
sudo curl --output /etc/init.d/redm4coprize https://gist.githubusercontent.com/samrain/c5ea2900b1ee1ce3917d/raw/4534209303e63c452eebe56ab77f628ffaef479e/redmine%20service%204%20coprize
##加上执行权限
sudo chmod +x /etc/init.d/redm4coprize
## 启动时一起启动
sudo update-rc.d redm4coprize defaults 21
## 启动服务
sudo service redm4coprize start
```

## 5. Nginx

> 支持下国人开源作品，以下用OpenResty来代替官方Nginx

### 下载源码

[下载页面在此](http://openresty.org/download)，请根据需要下载release版本。

```
wget http://openresty.org/download/ngx_openresty-1.7.7.1.tar.gz
tar xzvf ngx_open*.gz && cd ngx_open*
```

###编译前准备

```
sudo apt-get install libreadline-dev libncurses5-dev libpcre3-dev libssl-dev perl make
```

### 设置编译选项

```
./configure
make
sudo make install
```

### 配置openresty+puma

```
sudo curl -Lo /usr/local/openresty/nginx/conf/nginx.conf https://gist.githubusercontent.com/samrain/53059ff49c6a8d184170/raw/c8b68e8afddefe85bb508b3fa04f991c48368e36/openresty-conf-4-puma
```

### 运行openresty

```
sudo /usr/local/openresty/nginx/sbin/nginx start
```

> 重启openresty `sudo /usr/local/openresty/nginx/sbin/nginx -s reload`

## 6. 更新ruby组件并重启所有服务
```
cd %redmin安装目录%
gem update
rbenv rehash
bundle update
bundle install --without development test RAILS_ENV=production
bundle exec rake generate_secret_token
bundle exec rake db:migrate RAILS_ENV=production
bundle exec rake redmine:load_default_data RAILS_ENV=production REDMINE_LANG=zh
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
bundle exec rake tmp:cache:clear
bundle exec rake tmp:sessions:clear
bundle exec rake assets:precompile RAILS_ENV=production 

sudo service redm4coprize restart

sudo /usr/local/openresty/nginx/sbin/nginx -s reload
```

## 7. 附录

### 启动redmine自带服务，便于查错时确定问题源

```
cd %redmin安装目录%
gem update
rbenv rehash
bundle update
bundle install --without development test RAILS_ENV=production
bundle exec rake generate_secret_token
bundle exec rake db:migrate RAILS_ENV=production
bundle exec rake redmine:load_default_data RAILS_ENV=production REDMINE_LANG=zh
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
bundle exec rake tmp:cache:clear
bundle exec rake tmp:sessions:clear
bundle exec rake assets:precompile RAILS_ENV=production 
ruby script/rails server webrick -e production
```
访问[http://localhost:3000](http://localhost:3000),用户名和密码为admin/admin

### 恢复样式定制

复制样式文件夹(比如`newmine-master`)到`%redmine安装目录%/public/themes/`，然后在redmine的管理界面里选择这个样式。

###增加邮件转发配置

修改`%redmine安装目录%/config/configuration.yml`,增加mail的配置

###备份
```
mysqldump --default-character-set=utf8 -r %备份文件名及全路径% --databases %redmine数据库% -u %用户名% -p
```

###导入数据

> 注意：不要用root登录数据库，一定要用数据库账号，否则导入时会新增一个数据库。

```
source %备份文件名及全路径%
```
