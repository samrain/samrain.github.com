---
layout : post
category : work
tags : [java, http, URL]
title : Java�����ȡhttp���������URL
---


	String url=request.getScheme()+"://"; 
	url+=request.getHeader("host"); 
	url+=request.getRequestURI(); 
	if(request.getQueryString()!=null) 
	url+="?"+request.getQueryString();


