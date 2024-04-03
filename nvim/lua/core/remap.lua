-- "n" : Normal mode (global)
-- "v" : Editing mode

-- Lazy Menu
vim.keymap.set("n", "<leader>m", "<cmd>Lazy<cr>") -- Open Lazy Menu

-- Explorer
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex) -- Open default explorer
vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle reveal position=float<cr>") -- Open neotree

-- Bufferline (tabs)
vim.keymap.set("n", "<C-h>", "<cmd>bn<cr>") -- Next buffer
vim.keymap.set("n", "<C-l>", "<cmd>bp<cr>") -- Previous buffer
vim.keymap.set("n", "<C-w>", "<cmd>bd<cr>") -- Close current buffer (if no modification)

-- Telescope
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope brower_files<cr>") -- File brower
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- All files (by name)
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope git_files<cr>") -- All files in git project (by name)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>") -- Find in files
vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>") -- Display undo tree

-- LazyGit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>") -- Display undo tree

-- Text editing
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>") -- Save file
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==") -- move line up(n)
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==") -- move line down(n)
