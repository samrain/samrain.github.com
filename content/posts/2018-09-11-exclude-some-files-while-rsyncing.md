+++
title = "在rsync时避免同步某些文件"
date = 2018-09-11T12:05:47+08:00
tags = ["rsync"]
categories = ["work"]
draft = false
+++

+ list.exclude

        Config/dll.config
        Logger.config

+ rsync4test.bat

        set PATH=%PATH%;C:\Program Files (x86)\cwRsync\bin\

        rsync -azcP --compress-level=9 --protocol=29 --delete /cygdrive/c/test/ rsync://localhost:18731/test --exclude-from=list.exclude



