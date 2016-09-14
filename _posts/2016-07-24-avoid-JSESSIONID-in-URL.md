
---
layout : post
category : work
tags : [URL, JSESSIONID]
title : 避免URL中出现JSESSIONID
---

修改 `web.xml`

    <weblogic-web-app xmlns="http://www.bea.com/ns/weblogic/weblogic-web-app">
    <session-descriptor>
        <cookies-enabled>true</cookies-enabled>
    </session-descriptor>
    
    <session-config>
        <tracking-mode>COOKIE</tracking-mode>
    </session-config>
