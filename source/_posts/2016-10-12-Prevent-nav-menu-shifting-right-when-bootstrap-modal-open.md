---
title: '[solution] easy way to prevent nav menu from shifting right when Bootstrap modal open'
date: 2016-10-12 12:54:57
tags:
---

> when Bootstrap modal open/popup displayed, the browser's scroll bar might disappear and the navbar may shift slightly to the right. The CSS below may fix the problem:

        .modal-open{
            overflow-y: scroll;
            padding-right: 0 !important;
        }