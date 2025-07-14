return {
    'williamboman/mason.nvim',
    dependencies = {
        -- Core
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        -- Completion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp',
        -- Lua Snippets
        {
            'L3MON4D3/LuaSnip',
            version = "v2.*",
            run = "make install_jsregexp",
            dependencies = { "rafamadriz/friendly-snippets" }, --Terraform snippets
        },
        'saadparwaiz1/cmp_luasnip',
        -- Other
        'onsails/lspkind.nvim', -- vscode like pictograms
    },
    config = function()
        local servers_list = {
            'ansiblels', -- Ansible
            'bashls', -- Bash
            'cssls', -- CSS
            'dockerls', -- Docker
            'docker_compose_language_service', -- Docker Compose
            'html', -- HTML
            'ts_ls', -- JS/TS
            'lua_ls', -- Lua
            'marksman', -- Markdown
            'pyright', -- Python
            'rust_analyzer', -- Rust
            'sqlls', -- SQL
            'tailwindcss', -- TailwindCSS
            'terraformls', -- Terraform
            'yamlls', -- YAML
        }

        require('mason').setup()
        require('mason-lspconfig').setup({
            ensure_installed = servers_list
        })

        -- Settings variables
        local cmp = require('cmp')
        local luasnip = require('luasnip')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lsp_config = require('lspconfig')

        -- Completion settings
        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-y>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' }, -- For luasnip users.
                { name = 'path' },
                { name = 'buffer' },
                { name = 'lspkind' },
            })
        })

        local on_attach_callback = function(_, buffer)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration", buffer = buffer })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition", buffer = buffer })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover", buffer = buffer })
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation", buffer = buffer })
        end
        -- Completing Settings end

        -- Setup servers
        for _, value in pairs(servers_list) do
            local server = lsp_config[value]
            server.setup{
                capabilities = capabilities,
                on_attach = on_attach_callback,
            }
        end
    end
}
