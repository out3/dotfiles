-- Line numbers
vim.opt.nu = true -- Display current line number
vim.opt.relativenumber = true -- Display relative line number

-- Indent settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Persistent undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Min lines at top when scrolling
vim.opt.scrolloff = 4
