---
layout : post
category : work
tags : [java, http, URL]
title : Java代码获取http请求的整个URL
date : 2016-06-20
---


	String url=request.getScheme()+"://"; 
	url+=request.getHeader("host"); 
	url+=request.getRequestURI(); 
	if(request.getQueryString()!=null) 
	url+="?"+request.getQueryString();


