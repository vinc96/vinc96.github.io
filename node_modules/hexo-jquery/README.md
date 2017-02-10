# hexo-jquery

This is a hexo plugin. It provides access to jquery to statically generate your site. This is useful if you have to deal with raw html,
and you want to process it at generation time.

## Installation

To install, simply run

```
npm install --save hexo-jquery
```

in your hexo site root folder.


## Usage

To use in the code, simply do

```
<% var $ = jquery() %>
```
