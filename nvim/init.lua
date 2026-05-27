-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

-- Default (fallback)
vim.opt.tabstop = 6
vim.opt.shiftwidth = 6
vim.opt.softtabstop = 6
vim.opt.expandtab = true
vim.opt.smartindent = true
