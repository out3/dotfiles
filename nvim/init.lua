-- <leader> key
vim.g.mapleader = " "

-- Lazy init
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Lazy load
require("lazy").setup("plugins")

-- Load set settings
require("core.set")

-- Load key remap
require("core.remap")
