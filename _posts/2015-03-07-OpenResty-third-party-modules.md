---
layout : post
category : work
tags : [linux, nginx, openresty, 模块]
title : OpenResty第三方模块
---

`LuaJIT` 1.5.8.1后默认安装，是Lua的实时编译器

`ArrayVarNginxModule` 在nginx配置文件中使用数组变量

`AuthRequestNginxModule` 身份验证，允许基于子请求的验证，它工作在接入阶段，因此可以很好地与其他接入模块（access，auth_basic）合作。

`CoolkitNginxModule` 默认安装，收集了很多有用的小模块，？/todo https://github.com/FRiCKLE/ngx_coolkit/

`DrizzleNginxModule` nginx上游模块，用libdrizzle访问MySQL和Drizzle。如果使用了LuaNginxModule，建议改用LuaRestyMySQLLibrary，因为这个模块更复杂更占内存

`EchoNginxModule` 包含很多Nginx的内部API用于流的输入和输出，并行/顺序子请求，定时器和睡眠，以及各种元数据的访问。它提供了各种工具，通过模拟不同类型的子请求，帮助测试和调试其他模块。


`EncryptedSessionNginxModule` 提供了基于Mac上AES-256对Nginx变量进行加密和解密。通常使用SetMiscNginxModule和标准rewrite模块的指令。该模块可用于实现Web应用程序的简单的用户登录和访问控制。


`FormInputNginxModule` 读取HTTP POST和PUT请求报文中的"application/x-www-form-urlencoded"内容,，并在解析其中参数并赋值给nginx变量。


`HeadersMoreNginxModule` 允许添加、设置或者清除任何请求和响应头，是标准头模块的增强版，因为它提供更多的工具，比如重置或清除“builtin headers”比如~Content-Type, ~Content-Length, and Server.


`IconvNginxModule` 使用libiconv来转换不同编码的字符。提供了set_iconv和iconv_filter命令，既可以处理nginx变量又能作为一个输出过滤器处理响应报文


`StandardLuaInterpreter` 默认安装，如果LuaJIT允许使用，那么它会自动关闭。


`MemcNginxModule` 扩展了标准的memcached模块，支持几乎整个memcached的ASCII协议。 当与LuaNginxModule一起使用时，建议使用这一个LuaRestyMemcachedLibrary代替，因为它更灵活和存储器效率更高。


`LuaNginxModule` 该模块将Lua解释器或LuaJIT2.0嵌入到nginx的核心，通过cosockets和Nginx的子请求的方式集成了强大的Lua线程（又名Lua协程）到Nginx的事件模型。


`Nginx` Nginx的是一个免费的，开源的，高性能的HTTP和反向代理服务器，也是一个IMAP/POP3代理服务器。


`NginxDevelKit` 用来作为其他的Nginx模块的基础，被设计用来扩展Nginx webserver的核心功能。


`LuaCjsonLibrary` 默认安装，是一个lua c模块，加快Lua解析和编码JSON的速度


`LuaRdsParserLibrary` 默认安装，为了最大限度地提高速度和减少内存占用，这个库是用纯C语言实现的。用于将DrizzleNginxModule和PostgresNginxModule模块生成的Resty-DBD-Stream格式数据解析成Lua数据结构。过去我们必须用JSON作为中间数据格式，在内存和CPU方面的效率非常低


`LuaRedisParserLibrary` Redis的解析器库实现了即轻又快的原始数据响应解析器，构建相应的LUA数据结构，同时还能构建Redis的原始请求。


`LuaRestyCoreLibrary` 默认安装，用LuaJIT FFI重新实现了LuaNginxModule提供的Lua API


`LuaRestyDNSLibrary` 默认安装，基于cosocket API对于LuaNginxModule的非阻塞DNS解析


`LuaRestyLockLibrary` 默认安装，基于LuaNginxModule的共享内存字典实现一个简单的非阻塞互斥锁API。用在消除“狗桩效应”（指缓存失效时，同时有很多请求访问导致同时更新缓存把服务搞挂）上。


`LuaRestyLrucacheLibrary` 默认安装，实现了一个Lua-land LRU 缓存（近期最少使用算法，是为虚拟页式存储管理服务的，减少进程耗费的内存空间）。


`LuaRestyMemcachedLibrary` 默认安装，基于cosocket API为LuaNginxModule做的Memcached客户端驱动


`LuaRestyMySQLLibrary` 默认安装，基于cosocket API为LuaNginxModule做的MySQL客户端驱动


`LuaRestyRedisLibrary` 默认安装，基于cosocket API为LuaNginxModule做的Redis客户端驱动


`LuaRestyStringLibrary` 默认安装，为LuaNginxModule提供字符串工具和普通Hash函数


`LuaRestyUploadLibrary` 默认安装，基于LuaNginxModule的cosocket API，读和解析http方式上传文件的流数据


`LuaRestyUpstreamHealthcheckLibrary` 默认安装，用纯lua写的对于Nginx上游服务器的健康检查


`LuaRestyWebSocketLibrary` 默认安装，基于LuaNginxModule的cosocket API，实现了非阻塞式的WebSocke服务端和客户端


`LuaUpstreamNginxModule` 为了经典Nginx的上行信道，公开了一个Lua API给LuaNginxModule


`PostgresNginxModule` ngx_postgres是一个上行模块，允许nginx直接同PostgreSQL数据库通信，回应数据变为RDS格式，所以它和RdsJsonNginxModule和DrizzleNginxModule兼容。


`RdsCsvNginxModule` 默认安装，实现了一个输出过滤器，用来转换数据从RDS格式变为CSV格式


`RdsJsonNginxModule` 实现一个输出过滤器，用来转换数据从RDS格式变为JSON流


`RedisNginxModule` 默认安装，是个上行模块使得nginx可以同redis2.x服务进行非阻塞对话，它同标准的ngx_memcached模块有相同的接口，但是只支持Redis的GET和SELECT命令。从Redis服务器返回解码结果。当使用LuaNginxModule时，会使用LuaRestyRedisLibrary而不是这个，因为它更复杂而且占内存。


`Redis2NginxModule` 默认安装，是个上行模块使得nginx可以同redis2.x服务进行非阻塞对话，实现了全部Redis2.0定义协议包括支持redis管道。从Redis服务器返回原始TCP回应。当使用LuaNginxModule时，会使用LuaRestyRedisLibrary而不是这个，因为它更复杂而且占内存。


`SetMiscNginxModule` 在Nginx重写模块上增加了很多set_XXX指令，这个模块提供的每个指令都可以方便的同其他nginx重写模块的指令混合使用，比如if和set


`SrcacheNginxModule` 可以在nginx上任意位置提供一个透明缓存层，比如那些使用上行甚至静态磁盘文件。通常，MemcNginxModule是连同该模块用于提供具体的高速缓冲存储器的后端。但在技术上，任何模块都可以提供了一个REST接口来取得和存储子请求。


`XssNginxModule` 增加跨域AJAX支持，目前只支持跨域的GET请求
