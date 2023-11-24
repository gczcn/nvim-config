vim.opt.termguicolors = true
require("bufferline").setup {
  options = {
    -- 使用 nvim 内置lsp
    diagnostics = "nvim_lsp",
    diagnostics = "coc",
    --diagnostics = "nvim_lsp" | "coc",
    mode = "buffer",
    --mode = "tabs",
    numbers = "ordinal",
    --colorscheme = "gruvbox",
    -- 左侧让出 nvim-tree 的位置
    offsets = { {
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      text_align = "left",
      --separator_style = "slope"
    } },
    --separator_style = "slope"
  }
}

-- 快速在buffer间跳转
vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bg", ":BufferLinePick", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "gt", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gT", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
