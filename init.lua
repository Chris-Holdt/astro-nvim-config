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

    -- colorscheme = "monokai_ristretto",
    -- colorscheme = "sonokai",
    -- colorscheme = "gruvbox",
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
            cmp_enabled = false,
            autopairs_enabled = false,
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

    mappings = {
        n = {
            ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
            ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
            ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
            ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
            ["<leader>zf"] = { "<cmd>Centerpad 120<cr>", desc = "Center single buffer" },
            ["<leader>zm"] = { "<cmd>MinimapToggle<cr>", desc = "Toggle Minimap" },
            ["<leader>sf"] = { "<Plug>CtrlSFPrompt", desc = "Search for string in files" },
            ["<A-j>"]      = { ":m .+1<CR>==", desc = "Move line down" },
            ["<A-k>"]      = { ":m .-2<CR>==", desc = "Move line up" },
        },
        v = {
            ["<leader>sf"] = { "<Plug>CtrlSFVwordExec", desc = "Search for highlighted string in files" },
            ["<A-j>"]      = { ":m '>+1<CR>gv=gv", desc = "Move line down" },
            ["<A-k>"]      = { ":m '<-2<CR>gv=gv", desc = "Move line up" },
        },
        i = {},
    },

    plugins = {
        init = {
            { "sainnhe/sonokai" },
            -- { "~/git/personal/custom-theme/spacerain" },
            { "morhetz/gruvbox" },
            { "fatih/molokai" },
            { "sjl/badwolf" },
            { "tanvirtin/monokai.nvim" },
            { "rktjmp/lush.nvim" },
            { "smithbm2316/centerpad.nvim" },
            { "kdheepak/lazygit.nvim" },
            { "petertriho/nvim-scrollbar",
                config = function()
                    require("scrollbar").setup()
                end,
            },
            { "wfxr/minimap.vim" },
            { "wakatime/vim-wakatime" },
            { "neoclide/coc.nvim", branch = "release" },
            { "dyng/ctrlsf.vim" },
            { "rktjmp/shipwright.nvim" }
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

-- Temporary home of custom keymap
local keyset = vim.keymap.set
local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
keyset("i", "<TAB>", [[coc#pum#visible() ? coc#pum#next(1) : "<TAB>"]], opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "<S-TAB>"]], opts)
keyset("i", "<c-space>", 'coc#refresh()', { silent = true, expr = true })

return config
