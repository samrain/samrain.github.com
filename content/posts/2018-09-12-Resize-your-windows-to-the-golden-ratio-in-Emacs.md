+++
title = "在Emacs中按照黄金分割比例调整屏幕"
date = 2018-09-12T09:56:20+08:00
tags = ["Emacs,黄金分割"]
categories = ["work"]
draft = false
+++

    (use-package golden-ratio
      :ensure t
      :diminish golden-ratio-mode
      :init
      (golden-ratio-mode 1))