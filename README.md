Hexo theme, Type!
=================

> TYPE, a concise Hexo theme, focus on typography, heavily inspired by 
> [Daniel Eden's website](https://daneden.me).

[![hexo](https://img.shields.io/badge/hexo-%3E%3D3.0-blue.svg?style=flat-square)](https://hexo.io)
[![license](https://img.shields.io/github/license/h404bi/hexo-theme-type.svg?style=flat-square)](LICENSE)

Installation
------------

**NOTICE:** This theme design for hexo site in sub-directory. If your hexo site is in root directory, do your own changes to make it be compatible.

**Install**

``` sh
$ git clone https://github.com/h404bi/hexo-theme-type.git themes/type
```

**Enable**

Modify `theme` setting in your hexo instance `_config.yml` to `type`.

**Update**

``` sh
$ cd themes/type
$ git pull
```

Configuration
-------------

```
# Menu
menu:
  Blog: /blog
  Links: /blog/links.html
  Guestbook: /blog/guestbook.html

# Miscellaneous
baidu_push: true
night_mode: false
```

Features
-----------

1. Just blank-leaving, Keep It Simple Stupid.
2. Black & White mode, Smooth toggling by config `night_mode` variable.
3. Responsive `<figure>` tag design, better images typography layout (with [hexo-tag-figure](https://github.com/h404bi/hexo-tag-figure) plugin).

Development
-----------

```sh
$ cd themes/type
$ yarn && yarn dev
```

License
-------

MIT
