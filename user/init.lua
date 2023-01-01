local config = {

    updater = {
        remote = "origin",
        channel = "nightly",
        version = "latest",
        branch = "main",
        commit = nil,
        pin_plugins = nil,
        skip_prompts = false,
        show_changelog = true,
        auto_reload = false,
        auto_quit = false,
    },

    colorscheme = "spacerain",

    highlights = {},

    options = {
        opt = {
            relativenumber = true,
            number = true,
            spell = false,
            signcolumn = "auto",
            wrap = false,
            tabstop = 4,
            softtabstop = 4,
            shiftwidth = 4,
        },
        g = {
            mapleader = " ",
            autoformat_enabled = true,
            cmp_enabled = true,
            autopairs_enabled = true,
            diagnostics_enabled = true,
            status_diagnostics_enabled = true,
            icons_enabled = true,
            -- sonokai_style = "espresso",
            go_highlight_types = 1,
            go_highlight_fields = 1,
            go_highlight_functions = 1,
            go_highlight_function_calls = 1,
            go_highlight_function_parameters = 1,
            go_highlight_extra_types = 1,
            go_highlight_operators = 1,
        },
    },

    header = {
        "░█████╗░██╗░░██╗██████╗░██╗░██████╗",
        "██╔══██╗██║░░██║██╔══██╗██║██╔════╝",
        "██║░░╚═╝███████║██████╔╝██║╚█████╗░",
        "██║░░██╗██╔══██║██╔══██╗██║░╚═══██╗",
        "╚█████╔╝██║░░██║██║░░██║██║██████╔╝",
        "░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═╝╚═════╝░",
        " ",
        "  ███╗░░██╗██╗░░░██╗██╗███╗░░░███╗",
        "  ████╗░██║██║░░░██║██║████╗░████║",
        "  ██╔██╗██║╚██╗░██╔╝██║██╔████╔██║",
        "  ██║╚████║░╚████╔╝░██║██║╚██╔╝██║",
        "  ██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║",
        "  ╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝",
    },

    diagnostics = {
        virtual_text = true,
        underline = true,
    },

    plugins = {
        ["null-ls"] = function(config)
            config.sources = {
            }
            return config
        end,
        treesitter = {},
        ["mason-lspconfig"] = {},
        ["mason-null-ls"] = {},
    },

    luasnip = {
        filetype_extend = {},
        vscode = {
            paths = {},
        },
    },

    cmp = {
        source_priority = {
            nvim_lsp = 1000,
            luasnip = 750,
            buffer = 500,
            path = 250,
        },
    },

    ["which-key"] = {
        register = {
            n = {
                ["<leader>"] = {
                    ["b"] = { name = "Buffer" },
                },
            },
        },
    },

    polish = function()
        -- Fix for tabbing in insert mode jumping to previous snippet location
        local luasnip = require('luasnip')

        local unlinkgrp = vim.api.nvim_create_augroup(
            'UnlinkSnippetOnModeChange',
            { clear = true }
        )

        vim.api.nvim_create_autocmd('ModeChanged', {
            group = unlinkgrp,
            pattern = { 's:n', 'i:*' },
            desc = 'Forget the current snippet when leaving the insert mode',
            callback = function(evt)
                if luasnip.session
                    and luasnip.session.current_nodes[evt.buf]
                    and not luasnip.session.jump_active
                then
                    luasnip.unlink_current()
                end
            end,
        })
    end,
}

return config
