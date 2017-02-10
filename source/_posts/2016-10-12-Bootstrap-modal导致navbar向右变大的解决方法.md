---
title: '[Bootstrap] modal导致navbar向右变大的解决方法'
date: 2016-10-12 12:57:48
tags:
---
> Bootstrap的modal弹出时，可能导致页面滚动条消失，并且navbar栏向右移。以下CSS可解决上述问题：

        .modal-open{
            overflow-y: scroll;
            padding-right: 0 !important;
        }