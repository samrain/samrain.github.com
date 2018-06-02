
---
layout : post
category : work
tags : [加密, 公钥 ]
title : 公钥编码格式
date : 2016-05-25
---

# 公钥的编码格式有ASN.1标准，也有CryptoAPI标准。<a id="orgheadline3"></a>

他们之间是可以进行转换的，可以参考：<http://www.jensign.com/JavaScience/dotnet/JKeyNet/>

RSA非对象加密在同一种填充模式和保持相同字节顺序下的加解密结果是相同的。

## ASN.1标准<a id="orgheadline1"></a>

-   SubjectPublicKeyInfo数字证书格式(你提供的第一种格式）
-   PKCS

## CryptoAPI标准<a id="orgheadline2"></a>

-   CSP Parameter（后面的那种格式）
-   CSP容器。
