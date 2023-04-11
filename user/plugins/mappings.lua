
local mappings = {
    n = {
        -- ["<leader>zg"] = {"<cmd>exec '!gdformat \"%\"'<cr>", desc = "Format GDScript file (function)" },
        -- ["<leader>zg"] = {
        --     function()
        --         vim.cmd(string.format("exec '!gdformat \'%\''"))
        --         -- vim.cmd "gdformat '%'"
        --         -- vim.cmd "e ++ff =dos"
        --         -- vim.cmd "set ff=unix"
        --         -- vim.cmd "silent! write"
        --     end, desc = "Format GDScript file (function)" },
        ["<leader>zg"] = { "<cmd>!gdformat '%' <cr> <cmd>e ++ff=dos <cr> <cmd>set ff=unix <cr> <cmd>w<cr>", desc = "Format GDScript file" },
        ["<leader>zf"] = { "<cmd>Centerpad 120<cr>", desc = "Center single buffer" },
        ["<leader>zm"] = { "<cmd>MinimapToggle<cr>", desc = "Toggle Minimap" },
        -- ["<leader>sf"] = { "<Plug>CtrlSFPrompt", desc = "Search for string in files" },
        ["<A-j>"]      = { ":m .+1<CR>==", desc = "Move line down" },
        ["<A-k>"]      = { ":m .-2<CR>==", desc = "Move line up" },
        ["<C-u>"]      = { "<C-u>zz", desc = "Move cursor half page up and center view" },
        ["<C-d>"]      = { "<C-d>zz", desc = "Move cursor half page down and center view" },
        ["n"]          = { "nzzzv", desc = "Improved search lookaround forward" },
        ["N"]          = { "Nzzzv", desc = "Improved search lookaround backwards" },
    },
    v = {
        -- ["<leader>sf"] = { "<Plug>CtrlSFVwordExec", desc = "Search for highlighted string in files" },
        ["<A-j>"]      = { ":m '>+1<CR>gv=gv", desc = "Move line down" },
        ["<A-k>"]      = { ":m '<-2<CR>gv=gv", desc = "Move line up" },
    },
    -- i = {
    --     ["<TAB>"] = { "" },
    -- }
}

-- Conquerer of Completion mappings
-- local keyset = vim.keymap.set
-- local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
-- keyset("i", "<TAB>", [[coc#pum#visible() ? coc#pum#next(1) : "<TAB>"]], opts) -- Next option,
-- keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "<S-TAB>"]], opts) -- Previous option,
-- keyset("i", "<c-CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<c-CR>\<c-r>=coc#on_enter()\<c-CR>"]], opts) -- Accept selected
-- keyset("i", "<c-space>", 'coc#refresh()', { silent = true, expr = true }) -- Trigger completion
-- keyset("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true }) -- Trigger rename

return mappings
