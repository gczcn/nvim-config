vim.g.mapleader = " "

--insert
vim.keymap.set("i", "jk", "<ESC>")
--visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") --单行或多行移动
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--normal

--插件
--nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>")

--快捷命令
vim.keymap.set("n", "<leader>n", ":noh<CR>")
vim.keymap.set("n", ";", ":")

vim.keymap.set("n", "<leader>r", ":QuickRun<CR>")
