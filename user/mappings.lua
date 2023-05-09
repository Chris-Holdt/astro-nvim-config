local mappings = {
    n = {
        ["<A-j>"]      = { ":m .+1<CR>==", desc = "Move line down" },
        ["<leader>ma"] = {
            function()
                require("harpoon.mark").add_file()
            end,
            desc = "Harpoon add mark"
        },
        ["<leader>mm"] = {
            function()
                require("harpoon.ui").toggle_quick_menu()
            end,
            desc = "Harpoon Quick Menu"
        },
        ["<leader>ms"] = {
            function(marknr)
                require("harpoon.ui").nav_file(marknr)
            end,
            desc = "Harpoon switch to mark"
        },
        ["<leader>mn"] = {
            function()
                require("harpoon.ui").nav_next()
            end,
            desc = "Harpoon switch to next"
        },
        ["<leader>mp"] = {
            function()
                require("harpoon.ui").nav_prev()
            end,
            desc = "Harpoon switch to previous"
        },
        ["<A-k>"]      = { ":m .-2<CR>==", desc = "Move line up" },
        ["<C-u>"]      = { "<C-u>zz", desc = "Move cursor half page up and center view" },
        ["<C-d>"]      = { "<C-d>zz", desc = "Move cursor half page down and center view" },
        ["n"]          = { "nzzzv", desc = "Improved search lookaround forward" },
        ["N"]          = { "Nzzzv", desc = "Improved search lookaround backwards" },
    },
    v = {
        ["<A-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move line down" },
        ["<A-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move line up" },
    },
}


return mappings
