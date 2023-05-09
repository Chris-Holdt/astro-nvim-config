return {
    { "catppuccin/nvim",                                     as = "catppuccin" },
    { "morhetz/gruvbox" },
    { "p00f/alabaster.nvim" },
    { "https://gitlab.com/protesilaos/tempus-themes-vim.git" },
    { "nelstrom/vim-mac-classic-theme" },
    { "ayu-theme/ayu-vim" },
    { "endel/vim-github-colorscheme" },
    { "NLKNguyen/papercolor-theme" },
    { "scheakur/vim-scheakur" },
    { "wimstefan/Lightning" },
    { "vim-scripts/pyte" },
    { "mkarmona/materialbox" },
    { "Th3Whit3Wolf/one-nvim" },
    { "sonph/onehalf",                                       rtp = "vim" },
    { "rktjmp/lush.nvim" },
    { "smithbm2316/centerpad.nvim" },
    { "kdheepak/lazygit.nvim" },
    {
        "petertriho/nvim-scrollbar",
        config = function()
            require("scrollbar").setup()
        end,
    },
    { "wfxr/minimap.vim" },
    { "wakatime/vim-wakatime" },
    { "dyng/ctrlsf.vim" },
    { "rktjmp/shipwright.nvim" },
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup()
        end,
    },
    { "pangloss/vim-javascript" },
    { "othree/html5.vim" },
    { "evanleck/vim-svelte" },
    { "prettier/vim-prettier" },
    { "habamax/vim-godot" },
    { "nvim-lua/plenary.nvim" },
    { "ThePrimeagen/harpoon" },
}
