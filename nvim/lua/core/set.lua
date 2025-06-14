-- Editor settings
vim.opt.number = true -- Display current line number
vim.opt.relativenumber = true -- Display relative line number
vim.opt.list = false -- Show spaces, line breaks, tabs...
vim.opt.tabstop = 4 -- Set tab to 4 spaces
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 4 -- Set the minimal lines at the top when scrolling
vim.opt.cursorline = true -- Highlight current line

-- Trim white spaces when save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

-- Persistent undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Files
vim.opt.autoread = true -- Read files when changed outside of nvim
vim.opt.autowrite = true -- Auto save files when changed
vim.opt.encoding = "UTF-8" -- Default encoding

-- Terraformls
vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.tf", "*.tfvars"},
  callback = function()
    vim.lsp.buf.format()
  end,
})

-- Ansible/Yaml
vim.filetype.add({
    extension = {
        yml = 'yaml.ansible'
    }
})
