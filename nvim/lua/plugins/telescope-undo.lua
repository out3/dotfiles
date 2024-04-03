return {
    'debugloop/telescope-undo.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        dependencies = {
            'nvim-telescope/telescope.nvim',
        }
    },
    opts = {
        extensions = {
            undo = {
                side_by_side = true,
                layout_strategy = "vertical",
                layout_config = {
                    preview_height = 0.6,
                },
            },
        },
    },
    config = function(_, opts)
        require('telescope').setup(opts)
        require('telescope').load_extension('undo')
    end
}
