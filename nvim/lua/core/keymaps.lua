vim.g.mapleader = "m"

local km = vim.keymap

-- insert mode
km.set("i", "jk", "<ESC>")

-- visual mode
km.set("v", "J", ":m '>+1<CR>gv=gv") -- move (multi-)line up
km.set("v", "K", ":m '<-2<CR>gv=gv") -- move (multi-)line down

-- normal mode
km.set("n", "<leader>sv", "<C-w>v") -- split vertical
km.set("n", "<leader>sh", "<C-w>s") -- split horizontal
km.set("n", "<leader> ", ":nohl<CR>") -- clear highlight

-- plugins
km.set("n", "<leader>t", ":NvimTreeToggle<CR>")
km.set("n", "<C-o>", ":bnext<CR>")
km.set("n", "<C-i>", ":bprevious<CR>")
