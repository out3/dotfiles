return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
        local catppuccin = require('catppuccin')

        catppuccin.setup({
            flavour = 'mocha',
            transparent_background = false,
            integrations = {
                gitsigns = true,
                markdown = true,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
                neotree = true,
                nvimtree = true,
                telescope = {
                    enabled = true,
                },
                treesitter = true,
            },
        })

        vim.cmd('colorscheme catppuccin')
    end,
}
