---
layout : post
category : tech
tags : [ubuntu, Termintor, shortcuts, copy, paste]
title : 怎么设置Terminator中的复制和粘帖快捷键
---
[思维导图文件下载](https://docs.google.com/file/d/0B1DrsqrLRzeIenhmbGo4aHVCbDg/edit?usp=sharing)

## 怎么设置Terminator中的复制和粘帖快捷键


### 修改配置文件~/.config/terminator/config
<pre>
[global_config]
  enabled_plugins = CustomCommandsMenu, InactivityWatch, TestPlugin, ActivityWatch, TerminalShot, APTURLHandler, LaunchpadCodeURLHandler, MavenPluginURLHandler, LaunchpadBugURLHandler
[keybindings]
  copy = <Ctrl><Shift>c
  paste = <Ctrl>v
[profiles]
  [[default]]
    copy_on_selection = True
    split_to_group = True
    cursor_color = "#31ee1d"
    foreground_color = "#00ff00"
[layouts]
  [[default]]
    [[[child1]]]
      type = Terminal
      parent = window0
      profile = default
    [[[window0]]]
      type = Window
      parent = ""
[plugins]
</pre>