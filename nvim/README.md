# Neovim Configuration on Ubuntu

This is the neovim configured in Ubuntu 22.04.2 LTS under WSL2. Be aware of potential compatibility
issues when copy-pasting. The `nvim` folder should generally be placed under `~/.config/`. When placed
correctly, the file structure should resemble bolow:
```
.config/nvim/
├── init.lua
├── lua
│   ├── core
│   │   ├── keymaps.lua  # create your custom key bindings here
│   │   └── options.lua
│   └── plugins
│       ├── autopairs.lua
│       ├── bufferline.lua
│       ├── cmp.lua
│       ├── comment.lua
│       ├── gitsigns.lua
│       ├── lsp.lua
│       ├── lualine.lua
│       ├── nvim-tree.lua
│       ├── plugins-setup.lua
│       ├── telescope.lua
│       └── treesitter.lua
└── plugin
    └── packer_compiled.lua
```

## Install

### Languages

In order for `treesitter` to work for the configured programming languages, you need to install the
following:

```
$ sudo apt update
$ sudo apt install -y lua5.3 python3-venv go openjdk-17-jdk openjdk-17-jre build-essentials docker.io
```

Note that you may customize the versions of those languages to your needs. FYI, the above script will
install `lua5.3`, `python3.x`, `java17`, `gcc/g++11` and docker.

### Other Software

For some plugins to work, you need to install `git` as well:

```
$ sudo apt install -y git
```

To inspect a project structure, I usually use `tree`:

```
$ sudo apt install -y tree
```

### Proxies and Mirrors

In some cases, you may run into slow downloads and wish to use different source mirrors or add a proxy 
to speed up the process. The following scripts will configure proxies/mirrors for some of the 
languages/tools installed above.

**Python**

To configure Python mirrors globally, (create and) open the file `~/.pip/pip.conf` and write

```
[global]
index-url = <mirror_repo_url>
[install]
trusted-host = <mirror_domain>
```

You may confirm that the configurations actually work by `pip3 config list`.

To configure it temporarily, include `-i <mirror_repo_url>` after your `pip3 install <package>`:

```
$ pip3 install <packages...> -i <mirror_repo_url>
```

Note that `-i` will only apply for the current command, which is why it is 'temporary'. For example,

```
$ pip3 install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple
```

**Go**

To add a go proxy, run

```
$ go env -w GO111MODULE=on
$ go env -w GOPROXY=<proxy_url>,direct
```

Do not forget the `,direct` at the end unless you know what it is doing! For example,

```
$ go env -w GOPROXY=https://mirrors.aliyun.com/goproxy/,direct
```

You may confirm that the environment variables are correctly set by `go env`.

**GitHub**

To add proxies for GitHub globally, run

```
$ git config --global http.proxy <http_proxy_url>
$ git config --global https.proxy <https_proxy_url>
```

## `Core` Directory

The core directory contains scripts that specify the common options, e.g., numbers, relative numbers,
themes, custom key bindings, etc.

## `Plugins` Directory

The plugins directory manages third-party plugins, e.g., language servers, file search, autocomplete,
nerdtree, etc.

## Help

For more info, search respective filenames on the Internet.
