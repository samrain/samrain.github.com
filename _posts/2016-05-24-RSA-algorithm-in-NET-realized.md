
---
layout : post
category : work
tags : [加密, RSA, Net ]
title : RSA算法在.net中实现
---

RSA算法是第一个能同时用于加密和数字签名的算法，也易于理解和操作。 RSA是被研究得最广泛的公钥算法，从提出到现在已近二十年，经历了各种攻击的考验，逐渐为人们接受，普遍认为是目前最优秀的公钥方案之一。RSA的安全性依赖于大数的因子分解，但并没有从理论上证明破译RSA的难度与大数分解难度等价。

.NET 为不对称加密提供了 RSACryptoServiceProvider 和 DSACryptoServiceProvider 类（命名空间：System.Security.Cryptography）。这些类在您使用默认构造函数创建新实例时创建一个公钥/私钥对。既可以存储不对称密钥以用在多个会话中，也可以只为一个会话生成不对称密钥。只支持公钥加密，私钥解密。公钥可以被广泛地使用，私钥应被严密地保护起来。

RSACryptoServiceProvider类包括：Modulus、Exponent、P、Q、DP、DQ、InverseQ、D等8个属性，其中Modulus和Exponent就是公钥，Modulus和D就是私钥，RSACryptoServiceProvider类提供导出公钥的方法，也提供导出私钥的方法，但导出的私钥包含上面8个属性，显然要用RSACryptoServiceProvider实现私钥加密公钥是不可行的。从RSA的原理来看，公钥加密私钥解密和私钥加密公钥解密应该是等价的。

每当创建不对称算法类的新实例时，都生成一个公钥/私钥对。创建该类的新实例后，可以用以下两种方法之一提取密钥信息：

-   ToXMLString方法

它返回密钥信息的 XML 表示形式。导出密钥&#x2013;xml形式的字符串。
对应导出方法：FromXmlString方法。通过 XML 字符串中的密钥信息初始化RSA 对象。 导入密钥。

-   ExportParameters方法

它返回RSAParameters 结构以保存密钥信息。导出密钥&#x2013;参数形式。
对应导出方法：ImportParameters方法。导入指定的RSAParameters。可以将 RSACryptoServiceProvider 类初始化为 RSAParameters 结构的值。
