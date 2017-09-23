# screen-workdir.sh
Utility to create session with the current folder name on GNU Screen

### Install

```sh
$ curl https://raw.githubusercontent.com/gutierri/screen-workdir.sh/master/screen-workdir.sh -o ~/.local/bin/screen-workdir.sh

$ echo "source ~/.local/bin/screen-workdir.sh" >> ~/.bashrc
```

### Usage

Now there is a -w parameter <kbd>screen -w</kbd>

```sh
$ cd ~/Projects/myproject

$ screen -w
```
---
License (GPLv3) Copyright (C) 2017 Gutierri Barboza me@gutierri.me
