return {
    'stevearc/aerial.nvim',
    opts = {
        on_attach = function(bufnr)
            vim.keymap.set('n', '{', '<cmd>AerialPrev<cr>', { buffer = bufnr })
            vim.keymap.set('n', '}', '<cmd>AerialNext<cr>', { buffer = bufnr })
        end,
        layout = {
            width = 0.2,
            max_width = 0.2,
            min_width = 0.2,
            placement = 'edge',
        },
    },
}
