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

## `Core` Directory

The core directory contains scripts that specify the common options, e.g., numbers, relative numbers,
themes, custom key bindings, etc.

## `Plugins` Directory

The plugins directory manages third-party plugins, e.g., language servers, file search, autocomplete,
nerdtree, etc.

## Help

For more info, search respective filenames on the Internet.
