return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	main = 'nvim-treesitter.configs',
	opts = {
		sync_install = false,
		auto_install = true,
		ensure_installed = {
			'vim', -- For vim help
			'bash',
			'lua',
			'markdown',
			'python',
			'rust',
			-- Web
			'html',
			'css',
			'javascript',
			'typescript',
			'tsx',
			-- Data format
			'json',
			'sql',
			'yaml',
		},
		highlight = {
			enable = true,
		},
		autotag = {
			enable = true
		},
		indent = {
			enable = true
		},
	}
}
