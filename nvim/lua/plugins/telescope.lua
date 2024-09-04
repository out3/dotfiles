return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope-file-browser.nvim',
		'debugloop/telescope-undo.nvim'
	},
	config = function()
		require('telescope').load_extension('lazygit')
	end
}
