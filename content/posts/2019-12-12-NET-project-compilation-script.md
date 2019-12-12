---
title: ".NET项目编译脚本"
date: 2019-12-12T11:15:47+08:00
tags: ["旅游,青海"]
categories: ["family"]
draft: false
---

## 编译整体项目 compile

```
call %dir-of-bat%%filename-of-get-last-version%
call %dir-of-bat%%filename-of-clean-sln%
call %dir-of-bat%%filename-of-rebulid-sln%

```

## 获取最新代码 get-last-version

```
call "d:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat"
tf get %dir-of-code% /recursive
```

## 清理工程 clean-sln
```
msbuild %dir-of-sln-code%%name-of-sln% /nologo /noconlog /m /p:BuildlnParallel=true /t:Clean /p:Configuration=Release /fl /flp:errorsonly;Append;logfile=%filename-of-compile-log%

```

## 重新编译工程 rebulid-sln
```
MSBuild %dir-of-sln-code%%name-of-sln% /nologo /noconlog /m /p:BuildlnParallel=true /t:Rebuild /p:Configuration=Release /fl /flp:errorsonly;Append;logfile=%filename-of-compile-log%
```

## 发布工程
```
msbuild %dir-of-code%%name-of-project%\%name-of-project%.csproj /nologo /noconlog /m /p:BuildlnParallel=true /t:Rebuild;ResolveReferences;_CopyWebApplication /p:Configuration=Release /p:OutDir=%dir-of-deploy%%name-of-project% /fl /flp:errorsonly;Append;logfile=%filename-of-log%

del /f /q %dir-of-deploy%%name-of-project%%dir-of-defaultpublish%%name-of-project%%dir-of-bin%%filename-of-pdb%

del /f /q %dir-of-deploy%%name-of-project%%dir-of-defaultpublish%%name-of-project%%dir-of-bin%%filename-of-nlog%
```

## 发布网站

```
aspnet_compiler /nologo -f -c -v /%name-of-project% -p %dir-of-code%%name-of-project% %dir-of-deploy%%name-of-project%

del /f /q %dir-of-deploy%%name-of-project%%dir-of-bin%%filename-of-pdb%
```