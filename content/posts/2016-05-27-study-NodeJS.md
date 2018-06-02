---
layout : post
category : work
tags : [Chrome, nodejs]
title : 学习node.js
date : 2016-05-27
---

# 每个模块都有require、exports、module三个预先定义好的变量可供使用。<a id="orgheadline1"></a>

-   require
    -   加载和使用别的模块，传入一个模块名，返回一个模块导出对象。
    -   模块名可使用相对路径（以./开头），或者是绝对路径（以/或C:之类的盘符开头）。
    -   模块名中的.js扩展名可以省略。
-   exports

当前模块的导出对象，用于导出模块公有方法和属性。别的模块通过require函数使用当前模块时得到的就是当前模块的exports对象。

-   module

通过module对象可以访问到当前模块的一些相关信息，但最多的用途是替换当前模块的导出对象。例如：

    module.exports = function () {
        console.log('Hello World!');
    };

# 工程目录<a id="orgheadline2"></a>

-   bin

存放命令行相关代码

-   doc

存放文档

-   lib

存放API相关代码

-   node<sub>modules</sub>

存放三方包

-   tests

存放测试用例

-   package.json

元数据文件

-   README.md

说明文件

# NPM<a id="orgheadline7"></a>

## 下载第三方包<a id="orgheadline3"></a>

下载后放在了 `node_modules` 子目录中。如果想要下载指定版本的话，可以在包名后边加上 `@<version>` 。

    npm install XXX

如果想要批量下载，那么对 `package.json` 的字段做了扩展，允许在其中申明第三方包依赖。这样就可以使用 `npm install` 来批量安装第三方包。比如：

    {
        "name": "node-echo",
        "main": "./lib/echo.js",
        "dependencies": {
            "argv": "0.0.2"
        }
    }

更重要的是，当以后这个包也上传到了NPM服务器，别人下载这个包时，NPM会根据包中申明的三方包依赖自动下载进一步依赖的三方包，如此一来，用户只需关心自己直接使用的三方包，不需要自己去解决所有包的依赖关系。

## 安装命令行程序<a id="orgheadline4"></a>

安装一个命令行程序的方法与三方包类似。

## 发布代码<a id="orgheadline5"></a>

第一次使用NPM发布代码前需要注册一个账号。终端下运行\`npm adduser\`，之后按照提示输入用户名、密码和邮件。

编辑 `package.json` :

    "name": "node-echo",  # 包名，在NPM服务器上须要保持唯一
    "version": "1.0.0",   # 当前版本号，分为X.Y.Z三位，分别代表主版本号、次版本号和补丁版本号。
    "dependencies": {     # 三方包依赖，需要指定包名和版本号
        "argv": "0.0.2"
      },
    "main": "./lib/echo.js", # 入口模块位置
    "bin" : {
        "node-echo": "./bin/node-echo" # 命令行程序名和主模块位置
    }

然后就可以在 `package.json` 所在目录下运行 `npm publish` 发布代码了。

## 其他常用命令<a id="orgheadline6"></a>

`npm help <command>` ：查看某条命令的详细帮助
`npm update <package>` ： 更新当前目录下node<sub>modules子目录里边的对应模块</sub>
`npm update <package> -g` ： 更新全局安装的程序
`npm cache clear` ：清空NPM本地缓存
`npm unpublish <package>@<version>` ：撤销发布过的某个版本代码。

# 文件操作<a id="orgheadline10"></a>

## 小文件拷贝<a id="orgheadline8"></a>

使用内置的fs模块简单实现copy：

    var fs = require('fs');
    
    function copy(src, dst) {
        fs.writeFileSync(dst, fs.readFileSync(src));
    }
    
    function main(argv) {
        copy(argv[0], argv[1]);
    }
    
    main(process.argv.slice(2));

以上程序使用fs.readFileSync从源路径读取文件内容，并使用fs.writeFileSync将文件内容写入目标路径。

> process是一个全局变量，可通过process.argv获得命令行参数。由于 `argv[0]` 固定等于NodeJS执行程序的绝对路径， `argv[1]～ 固定等于主模块的绝对路径，因此第一个命令行参数从 ~argv[2]` 这个位置开始。

## 大文件拷贝<a id="orgheadline9"></a>

上边的程序拷贝一些小文件没啥问题，但这种一次性把所有文件内容都读取到内存中后再一次性写入磁盘的方式不适合拷贝大文件，内存会爆仓。对于大文件，我们只能读一点写一点，直到完成拷贝。因此上边的程序需要改造如下。

    var fs = require('fs');
    
    function copy(src, dst) {
        fs.createReadStream(src).pipe(fs.createWriteStream(dst));
    }
    
    function main(argv) {
        copy(argv[0], argv[1]);
    }
    
    main(process.argv.slice(2));

以上程序使用fs.createReadStream创建了一个源文件的只读数据流，并使用fs.createWriteStream创建了一个目标文件的只写数据流，并且用pipe方法把两个数据流连接了起来。

# API<a id="orgheadline18"></a>

## Buffer<a id="orgheadline11"></a>

NodeJS提供了一个与String对等的全局构造函数Buffer来提供对二进制数据的操作。
官方文档： <http://nodejs.org/api/buffer.html>
Buffer与字符串有一个重要区别。字符串是只读的，并且对字符串的任何修改得到的都是一个新字符串，原字符串保持不变。至于Buffer，更像是可以做指针操作的C语言数组。

## Stream<a id="orgheadline12"></a>

当内存中无法一次装下需要处理的数据时，或者一边读取一边处理更加高效时，我们就需要用到数据流。
官方文档： <http://nodejs.org/api/stream.html>
Stream基于事件机制工作，所有Stream的实例都继承于NodeJS提供的EventEmitter。
NodeJS直接提供了.pipe方法来做这件事情

## File System<a id="orgheadline13"></a>

官方文档： <http://nodejs.org/api/fs.html>
NodeJS通过fs内置模块提供对文件的操作。fs模块提供的API基本上可以分为以下三类：

-   文件属性读写。

其中常用的有fs.stat、fs.chmod、fs.chown等等。

-   文件内容读写。

其中常用的有fs.readFile、fs.readdir、fs.writeFile、fs.mkdir等等。

-   底层文件操作。

其中常用的有fs.open、fs.read、fs.write、fs.close等等。
> fs模块的所有异步API都有对应的同步版本，用于无法使用异步操作时，或者同步操作更方便时的情况。同步API除了方法名的末尾多了一个Sync之外，异常对象与执行结果的传递方式也有相应变化。

## Path<a id="orgheadline17"></a>

### path.normalize<a id="orgheadline16"></a>

将传入的路径转换为标准路径
> 注意： 标准化之后的路径里的斜杠在Windows系统下是\\，而在Linux系统下是/。如果想保证任何系统下都使用/作为路径分隔符的话，需要用.replace(/\\\\/g, '/')再替换一下标准路径。

1.  path.join

    将传入的多个路径拼接为标准路径。

2.  path.extname

    当我们需要根据不同文件扩展名做不同操作时

# 遍历<a id="orgheadline19"></a>

目录是一个树状结构，在遍历时一般使用深度优先+先序遍历算法。
同步遍历和异步遍历

> 陷阱： 使用递归算法编写的代码虽然简洁，但由于每递归一次就产生一次函数调用，在需要优先考虑性能时，需要把递归算法转换为循环算法，以减少函数调用次数。

# 文本编码<a id="orgheadline23"></a>

我们常用的文本编码有UTF8和GBK两种，并且UTF8文件还可能带有BOM。在读取不同编码的文本文件时，需要将文件内容转换为JS使用的UTF8编码字符串后才能正常处理。

## BOM的移除<a id="orgheadline20"></a>

BOM用于标记一个文本文件使用Unicode编码，其本身是一个Unicode字符（"\uFEFF"），位于文本文件头部。BOM字符虽然起到了标记文件编码的作用，其本身却不属于文件内容的一部分。以下代码实现了识别和去除UTF8 BOM的功能。

    function readText(pathname) {
        var bin = fs.readFileSync(pathname);
    
        if (bin[0] === 0xEF && bin[1] === 0xBB && bin[2] === 0xBF) {
            bin = bin.slice(3);
        }
    
        return bin.toString('utf-8');
    }

## GBK转UTF8<a id="orgheadline21"></a>

借助iconv-lite这个三方包来转换编码。使用NPM下载该包后，我们可以按下边方式编写一个读取GBK文本文件的函数。

    var iconv = require('iconv-lite');
    
    function readGBKText(pathname) {
        var bin = fs.readFileSync(pathname);
    
        return iconv.decode(bin, 'gbk');
    }

## 单字节编码<a id="orgheadline22"></a>

如果一个文本文件只包含英文字符，那无论用GBK编码或是UTF8编码读取这个文件都是没问题的。即使一个文本文件中有中文等字符，如果我们需要处理的字符仅在ASCII0~128范围内，比如除了注释和字符串以外的JS代码，我们就可以统一使用单字节编码来读取文件，不用关心文件的实际编码是GBK还是UTF8。这里的诀窍在于，不管大于0xEF的单个字节在单字节编码下被解析成什么乱码字符，使用同样的单字节编码保存这些乱码字符时，背后对应的字节保持不变。
NodeJS中自带了一种binary编码可以用来实现这个方法：

    function replace(pathname) {
        var str = fs.readFileSync(pathname, 'binary');
        str = str.replace('foo', 'bar');
        fs.writeFileSync(pathname, str, 'binary');
    }

# 网络操作<a id="orgheadline24"></a>

http官方文档： <http://nodejs.org/api/http.html>
https官方文档： <http://nodejs.org/api/https.html>

HTTP请求和响应本质上是一个数据流，由请求头（headers）和请求体（body）组成。

https模块与http模块极为类似，区别在于https模块需要额外处理SSL证书。

如果目标服务器使用的SSL证书是自制的，不是从颁发机构购买的，默认情况下https模块会拒绝连接，提示说有证书安全问题。在options里加入rejectUnauthorized: false字段可以禁用对证书有效性的检查，从而允许https模块请求开发环境下使用自制证书的HTTPS服务器。

URL官方文档： <http://nodejs.org/api/url.html。处理HTTP请求时url模块使用率超高，因为该模块允许解析URL、生成URL，以及拼接URL>。

Query String官方文档： <http://nodejs.org/api/querystring.html。querystring模块用于实现URL参数字符串与参数对象的互相转换>。

Zlib官方文档： <http://nodejs.org/api/zlib.html。zlib模块提供了数据压缩和解压的功能。当我们处理HTTP请求和响应时，可能需要用到这个模块>。

Net官方文档： <http://nodejs.org/api/net.html。net模块可用于创建Socket服务器或Socket客户端>。
