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
    end,
}

return config
