dock - [Docker™](https://www.docker.com/) docking facility
==========================================================

Download
--------

> Adapt to your own environment
```
$ cd /opt
$ git clone https://github.com/gwallet/dock.git
```

Install
-------

### Man Page

1. cd /path/to/man/man1
1. ln -s /path/to/dock/man/dock.1 dock.1

Example:

```
$ cd /usr/local/share/man/man1
$ ln -s /opt/dock/man/dock.1 dock.1
```

### Bash

1. cd /path/to/etc/bash_completion.d
1. ln -s /path/to/dock/bash/completion/dock dock

Example:

```
$ cd /usr/local/etc/bash_completion.d
$ ln -s /opt/dock/bash/completion/dock dock
```

### Oh My ZSH!

1. cd ~/.oh-my-zsh/custom/plugins
1. ln -s /path/to/dock/zsh/plugin dock

Example:

```
$ cd ~/.oh-my-zsh/custom/plugins
$ ln -s /opt/dock/zsh/plugin dock
```

### Restart Your Shell

```
$ exit
```

Usage
-----

```
$ dock TARGET
```

### What else ?

```
$ man dock
```
