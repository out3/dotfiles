-- "n" : Normal mode (global)
-- "i" : Insert mode
-- "v" : Editing mode

-- Background, color mode toggle
vim.keymap.set("n", "<leader>bg", ':exec &bg=="light"? "set bg=dark" : "set bg=light"<CR>', {noremap = true, silent = true})

-- Lazy Menu
vim.keymap.set("n", "<leader>m", "<cmd>Lazy<cr>") -- Open Lazy Menu

-- Explorer
vim.keymap.set("n", "<leader>ex", "<cmd>Ex<cr>") -- Open default explorer
vim.keymap.set("n", "<leader>ee", "<cmd>Neotree toggle reveal position=float<cr>") -- Open neotree

-- Buffer (tabs)
vim.keymap.set("n", "<C-t>", "<cmd>tabnew<cr>") -- Open new tab
vim.keymap.set("n", "<C-w>", "<cmd>bd<cr>") -- Close current buffer (if no modification)
vim.keymap.set("n", "<C-h>", "<cmd>bp<cr>") -- Previous buffer
vim.keymap.set("n", "<C-l>", "<cmd>bn<cr>") -- Next buffer

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- All files (by name)
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope git_files<cr>") -- All files in git project (by name)
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>") -- Find in files
vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>") -- Display undo tree

-- LazyGit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>") -- Display undo tree

-- Text editing
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>") -- Save file

vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==") -- Move line up
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==") -- Move line down

vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi") -- Move line up (insert mode)
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi") -- Move line down (insert mode)

vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv") -- Move line up (visual mode)
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv") -- Move line down (visual mode)

vim.keymap.set("n", "<C-d>", "<S-v>yp")  -- Duplicate a line
vim.keymap.set("i", "<C-d>", "yP") -- Duplicate multiple lines while on visual mode

-- Diagnostics
vim.keymap.set('n', '<leader>do', '<cmd> lua vim.diagnostic.open_float()<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>dO', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
