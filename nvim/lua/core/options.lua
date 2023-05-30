local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- splits
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- colorscheme
opt.termguicolors = true
opt.signcolumn = "yes"
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

-- others
opt.wrap = false
opt.cursorline = true
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")

