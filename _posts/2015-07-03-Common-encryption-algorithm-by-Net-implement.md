---
layout : post
category : work
tags : [加密, 解密, 算法, net]
title : 常用加解密算法的.net实现
---

常见的加密和编码算法都已经在 .NET Framework中得到了实现，为编码人员提供了极大的便利性，实现这些算法的名称空间是：`System.Security.Cryptography`。.NET Framework 中的数据加密算法仍然不够完全，如 IDEA、BLOWFISH、其它算法，如ElGamal、Deffie-Hellman、ECC 等，对于一些其它的数据校验算法支持也不够，如 CRC、SFV 等，开发人员只能去从早期代码做移植或者寻找第三方厂商的实现。

`System.Security.Cryptography`命名空间提供加密服务，包括安全的数据编码和解码，以及许多其他操作，例如散列法、随机数字生成和消息身份验证。

`System.Security.Cryptography`是按如下方式组织的：

## 对称加密

对称加密又称为私钥加密，因为同一密钥既用于加密又用于解密。私钥加密算法非常快（与公钥算法相比），特别适用于对较大的数据流执行加密转换。

.NET Framework 提供以下实现私钥加密算法的类：

- DES `DESCryptoServiceProvider`

- RC2 `RC2CryptoServiceProvider`

- Rijndael（AES） `RijndaelManaged`

- 3DES `TripleDESCryptoServiceProvider`

## 公钥加密和数字签名

公钥加密使用一个必须对未经授权的用户保密的私钥和一个可以对任何人公开的公钥。用公钥加密的数据只能用私钥解密，而用私钥签名的数据只能用公钥验证。公钥可以被任何人使用；该密钥用于加密要发送到私钥持有者的数据。两个密钥对于通信会话都是唯一的。公钥加密算法也称为不对称算法，原因是需要用一个密钥加密数据而需要用另一个密钥来解密数据。

.NET Framework 提供以下实现公钥加密算法的类： 

- DSA `DSACryptoServiceProvider`

- RSA `RSACryptoServiceProvider`

## 哈希（Hash）值

哈希算法将任意长度的二进制值映射为固定长度的较小二进制值，这个小的二进制值称为哈希值。哈希值是一段数据唯一且极其紧凑的数值表示形式。如果散列一段明文而且哪怕只更改该段落的一个字母，随后的哈希都将产生不同的值。要找到散列为同一个值的两个不同的输入，在计算上是不可能的，所以数据的哈希值可以检验数据的完整性。

.NET Framework 提供以下实现数字签名算法的类： 

- HMAC `HMACSHA1` （HMAC 为一种使用密钥的 Hash 算法） 

- MAC `MACTripleDES`

- MD5 `MD5CryptoServiceProvider`

- SHA1 `SHA1Managed、SHA256Managed、SHA384Managed、SH7747.net12Managed`

## 随机数生成

加密密钥需要尽可能地随机，以便使生成的密钥很难再现，所以随机数生成是许多加密操作不可分割的组成部分。

在 .NET Framework 中，`RNGCryptoServiceProvider`是随机数生成器算法的实现，对于数据算法，.NET Framework 则在其它命名空间中实现，如 Convert 类实现 Base 64 编码，System.Text 来实现编码方式的转换等。
