---
layout : post
category : study
tags : [linux, OCR, 中文OCR]
title : linux下中文OCR
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIMzg3c2ZfM1RPNFk/edit?usp=sharing)

## 安装tesseract-ocr


### 包安装

- `sudo apt-get install tesseract-ocr`

### 源码安装

- [google站点](https://code.google.com/p/tesseract-ocr/)

## 安装tesseract-ocr的中文语言包


下载[tesseract-ocr-3.02.chi_sim.tar.gz](https://code.google.com/p/tesseract-ocr/downloads/detail?name=tesseract-ocr-3.02.chi_sim.tar.gz&can=2&q=)
解压到目录/usr/share/tesseract-ocr/tessdata/


## 识别


运行`tesseract *.jpeg output.filename -l chi_sim`

- `-l chi_sim`指明语言是中文简体
- 详细用法看man

一般识别图像，如果有pdf那么必须转换为图像


## 结论


- 速度有点慢


- 识别率不高


- 命令行方式使用稍显不方便


## Windows同类软件


[汉王PDF OCR](http://down.tech.sina.com.cn/page/42105.html)
