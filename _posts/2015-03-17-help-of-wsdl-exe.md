---
layout : post
category : work
tags : [wsdl, c#, visual studio, webservcie]
title : wsdl帮助
---

## wsdl.exe

使用 ASP.NET，根据 WSDL 协定文件、XSD 架构和 .discomap 发现文档，为 Xml Web Services 客户端和 Xml Web Services 生成代码的实用工具。此工具可以与 disco.exe 一起使用。 

## 参数

`wsdl.exe <选项> <URL 或路径> <URL 或路径> ...` 

`<URL 或路径>` 指向 WSDL 协定、XSD 架构或 .discomap 文档的 URL 或路径。 

`/nologo`取消显示版权标志。 

`/language:<language>`
用于生成的代理类的语言。请从“CS”、“VB”、“JS”、“VJS”、 
“CPP”中选择，或者为实现 System.CodeDom.Compiler.CodeDomProvider 
的类提供一个完全限定的名称。默认语言为“CS”(CSharp)。 
缩写形式为“/l:”。 

`/sharetypes`
打开类型共享功能。此功能针对不同服务之间共享 
的相同类型(命名空间、名称和网络签名必须相同) 
创建一个具有单一类型定义的代码文件。 
请使用 http:// URLs 作为命令行参数来引用 
服务，或为本地文件创建一个 discomap 文档。 

`/verbose` 
指定 /sharetypes 开关时显示额外信息。 
缩写形式为“/v”。 

`/fields` 
生成字段而非属性。缩写形式为“/f”。 

`/order` 
为粒子成员生成显式顺序标识符。 

`/enableDataBinding` 
在所有生成的类型上实现 INotifyPropertyChanged 接口， 
以启用数据绑定。缩写形式为“/edb”。 

`/namespace:<namespace>` 
生成的代理或模板的命名空间。默认命名空间 
为全局命名空间。缩写形式为“/n:”。 

`/out:<fileName|directoryPath>` 
生成的代理代码的文件名或目录路径。默认文件名是从 
服务名派生的。缩写形式为“/o:”。 

`/protocol:<protocol>` 
重写要实现的默认协议。请从“SOAP”、“SOAP12”、 
“HttpGet”、“HttpPost”中选择。 

`/username:<username>` 
`/password:<password>` 
`/domain:<domain>` 
连接到要求身份验证的服务器时使用的凭据。 
缩写形式为“/u:”、“/p:”和“/d:”。 

`/proxy:<url>` 
用来处理 HTTP 请求的代理服务器的 URL。 
默认为使用系统代理服务器设置。 

`/proxyusername:<username>` 
`/proxypassword:<password>` 
`/proxydomain:<domain>`
连接到要求身份验证的代理服务器时使用的凭据。 
缩写形式为“/pu:”、“/pp:”和“/pd:”。 

`/appsettingurlkey:<key>` 
在代码生成中用来读取 URL 属性的 
默认值的配置项。默认为不从配置 
文件中读取。缩写形式为“/urlkey:”。 

`/appsettingbaseurl:<baseurl>` 
计算 URL 段时使用的基 URL。 
还必须指定 appsettingurlkey 选项。URL 段是 
从 appsettingbaseurl 计算 
WSDL 文档中的 URL 的相对 URL 的结果。缩写形式为“/baseurl:”。 

`/parsableerrors` 
输出错误，其格式与编译器报告的格式类似。 

### 高级 

`/server` 
服务器开关已被否决。请改用 /serverInterface。 
使用基于协定的 ASP.NET，为 Xml Web Services 实现 
生成抽象类。默认情况下，生成客户端代理 
类。 

`/serverInterface` 
为 ASP.Net Web 服务的服务器端实现生成 
接口。将为 wsdl 文档中的每个绑定生成 
一个接口。wsdl 单独实现 wsdl 协定(实现 
接口的类在类方法上不应包括下列任意一项: 
更改 wsdl 协定的 Web 服务属性或序列化 
属性)。缩写形式为“/si”。 

`/parameters:<file>` 
从指定的 xml 文件读取命令行选项。这样可以 
指定命令行中无法使用的选项，例如选择 
生成的异步编程模型类型。有关详细信息， 
请参阅工具文档。缩写形式为“/par:”。














