Hexo theme, Type!
=================

> TYPE, a concise Hexo theme, focus on typography, heavily inspired by 
> [Daniel Eden's website](https://daneden.me).

[![hexo](https://img.shields.io/badge/hexo-%3E%3D3.0-blue.svg?style=flat-square)](https://hexo.io)
[![license](https://img.shields.io/github/license/h404bi/hexo-theme-type.svg?style=flat-square)](LICENSE)

Installation
------------

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

Development
-----------

```sh
$ cd themes/type
$ yarn && yarn dev
```

License
-------

MIT
