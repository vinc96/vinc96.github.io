---
title: Basic CS Cheat Sheet
date: 2016-09-12 13:30:04
tags:
---
![JavaType](/img/cheatSheet/JavaType.png)

<!-- more -->
![trigonometric](/img/cheatSheet/trigonometric.PNG)
![Regex](/img/cheatSheet/regex.gif)
![Ascii1](/img/cheatSheet/ascii.PNG)
![Ascii2](/img/cheatSheet/ascii2.PNG)
![JavaExceptionType](/img/cheatSheet/JavaExceptionType.PNG)


刪除YouTube播放列表視頻代碼（在瀏覽器console內輸入）：

function removeVideos(){
var el = document.getElementsByClassName('pl-video-edit-remove');
var i=0;
setInterval(function(){el[i++].click()}, 50);
}
removeVideos();
window.onerror = function(){removeVideos();}
