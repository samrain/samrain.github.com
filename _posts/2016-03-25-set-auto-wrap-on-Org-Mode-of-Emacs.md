---
layout : post
category : study
tags : [emacs, orgmode]
title : orgmode中设置自动换行
---

## orgmode中设置自动换行<a id="sec-3" name="sec-3"></a>

最近迷上了用orgmode写文章，但是渐渐发现有个小问题——一行文字太长了却不能自动换行。之前emacs上写markdown时是可以自动换行的。

于是股沟下，大部分的帖子都是告诉我：

    ;;自动换行
    (add-hook 'org-mode-hook
    (lambda () (setq truncate-lines nil)))

但是设置好了还是没效果

继续股沟它哥了，发现这个帖子 <http://forum.ubuntu.org.cn/viewtopic.php?f=68&t=294165>，
但是最后其实给出的代码也是有问题的，我稍微改了下：

    ;; org 自动换行
    (add-hook 'org-mode-hook (lambda () (setq toggle-truncate-lines t)))

好了
