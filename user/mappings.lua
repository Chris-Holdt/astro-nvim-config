local mappings = {
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
        ["<C-u>"]      = { "<C-u>zz", desc = "Move cursor half page up and center view" },
        ["<C-d>"]      = { "<C-d>zz", desc = "Move cursor half page down and center view" },
        ["n"]          = { "nzzzv", desc = "Improved search lookaround forward" },
        ["N"]          = { "Nzzzv", desc = "Improved search lookaround backwards" },
    },
    v = {
        ["<leader>sf"] = { "<Plug>CtrlSFVwordExec", desc = "Search for highlighted string in files" },
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
