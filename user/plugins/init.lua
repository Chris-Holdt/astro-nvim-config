return {
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
    { "dyng/ctrlsf.vim" },
    { "rktjmp/shipwright.nvim" },
    { "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround").setup()
        end,
    }
}
