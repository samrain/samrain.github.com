---
layout : post
category : work
tags : [测试, watir,网页测试]
title : watir 网页程序自动化测试工具
---

## 安装

```
sudo apt-get install ruby ruby-dev

gem source -r http://rubygems.org/ && gem source -a https://ruby.taobao.org

sudo gem install watir rspec --no-rdoc --no-ri

sudo apt-get install firefox

sudo apt-get install xvfb
```

如果要用chrome做测试，那么

```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i g*.deb
sudo apt-get -f install
```

下载[最新的驱动](http://chromedriver.storage.googleapis.com/index.html)下来解压到PATH中（用 echo $PATH来看在哪里）

## 写测试文件`put.rb`

```
# -*- coding: utf-8 -*-
require "rspec"
require "headless"
require 'watir-webdriver'

describe "put" do
  #headless = Headless.new
  #headless.start
  let(:browser) { @browser ||= Watir::Browser.new :chrome } 
  before { browser.goto "http://cms.coprize.cn/CMS(prize)/dat/Domains/Coprize/mprize/pag/wap/index.html " }
  after { browser.close  }

  it "put the info" do
    browser.execute_script("SubmitUser()")
    browser.text_field(:id => "name").set "测试数据"
    browser.text_field(:id => "phone").set "1383838438"
    browser.text_field(:id => "email").set "白宫"
    browser.execute_script("SubmitUserInfo()")
  end
  #headless.destroy
end
```



## 测试运行

```
rspec put.rb

```
