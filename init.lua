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

    colorscheme = "monokai_ristretto",
    -- colorscheme = "sonokai",
    
    highlights = {},
    
    options = {
        opt = {
            relativenumber = true, 
            number = true, 
            spell = false, 
            signcolumn = "auto", 
            wrap = false, 
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

    default_theme = {
        colors = {
            fg = "#abb2bf",
            bg = "#1e222a",
        },
        highlights = function(hl) 
            local C = require "default_theme.colors"

            hl.Normal = { fg = C.fg, bg = C.bg }
            
            hl.DiagnosticError.italic = true
            hl.DiagnosticHint.italic = true
            hl.DiagnosticInfo.italic = true
            hl.DiagnosticWarn.italic = true

            return hl
        end,
        
        plugins = {
            aerial = true,
            beacon = false,
            bufferline = true,
            cmp = true,
            dashboard = true,
            highlighturl = true,
            hop = false,
            indent_blankline = true,
            lightspeed = false,
            ["neo-tree"] = true,
            notify = true,
            ["nvim-tree"] = false,
            ["nvim-web-devicons"] = true,
            rainbow = true,
            symbols_outline = false,
            telescope = true,
            treesitter = true,
            vimwiki = false,
            ["which-key"] = true,
        },
    },

    diagnostics = {
        virtual_text = true,
        underline = true,
    },
    
    lsp = {
        servers = {},
        formatting = {
            format_on_save = {
                enabled = true, 
                allow_filetypes = { 
                     "go",
		             "typescript",
                },
                ignore_filetypes = { 
                },
            },
            disabled = {},
            timeout_ms = 1000, 
        },
        mappings = {
            n = {},
        },
        ["server-settings"] = {},
    },

    mappings = {
        n = {
            ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
            ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
            ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
            ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
            ["<leader>zf"] = { "<cmd>Centerpad 120<cr>", desc = "Center single buffer" },
            ["<leader>zm"] = { "<cmd>MinimapToggle<cr>", desc = "Toggle Minimap" },
           },
        t = {},
    },
    
    plugins = {
        init = {
            { "sainnhe/sonokai" },
            { "rktjmp/lush.nvim" },
            { 
                "tanvirtin/monokai.nvim"
                -- "tanvirtin/monokai.nvim",
                -- config = function()
                --     require("monokai").setup { palette = require("monokai").ristretto }
                -- end,
            },
            { "smithbm2316/centerpad.nvim" },
            { "kdheepak/lazygit.nvim" },
            { "petertriho/nvim-scrollbar",
                config = function()
                    require("scrollbar").setup()
                end,
            },
            { "wfxr/minimap.vim" }
        },
        
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
