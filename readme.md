# theme-manager [![Build Status](https://travis-ci.org/EricCrosson/theme-manager.svg?branch=master)](https://travis-ci.org/EricCrosson/theme-manager) [![Version](https://img.shields.io/github/tag/EricCrosson/theme-manager.svg)](https://github.com/EricCrosson/theme-manager/releases)

> Manage color-themes in GNU Emacs

## Install

With [Quelpa](https://framagit.org/steckerhalter/quelpa)

``` {.sourceCode .lisp}
(use-package theme-manager
  :quelpa (theme-manager
           :fetcher github
           :repo "EricCrosson/theme-manager"))
```

Or manually, after downloading into your `load-path`

``` {.sourceCode .lisp}
(require 'theme-manager)
```

## Use

Three interactive functions are provided

| Function                           | Purpose                                         |
|------------------------------------|-------------------------------------------------|
| `theme-manager-list-active-themes` | List all active themes                          |
| `theme-manager-disable-all-themes` | Disable all active themes                       |
| `theme-manager-change-theme`       | Disable current theme(s) and enable a new theme |

## Related

- [How to reset color-theme? (StackOverflow)](https://emacs.stackexchange.com/a/3114)

## License

GPL 2 (or higher) © [Free Software Foundation, Inc](http://www.fsf.org/about).
