local keymap = vim.keymap.set

-------------------------------------------------------------------------------

keymap(
    "n",
    "<Esc>",
    "<cmd>nohlsearch<CR>",
    { desc = "Turns off the highlighting when you are done searching" }
)

-------------------------------------------------------------------------------
-- SECTION: Terminal

keymap(
    "n",
    "<leader>t",
    -- This will open the terminal without any line numbers
    ":split<CR>:terminal<CR>:setlocal nonumber norelativenumber<CR>i",
    { desc = "Open the [t]erminal and switch to insert mode" }
)

-- Alt + e
-- Switch back to `Normal Mode` when using the `Terminal Mode`,
-- and then go back to the screen that has your code.
-- Press `Alt t`
keymap(
    "t", 
    "<M-e>", 
    "<C-\\><C-n><C-w>w", 
    { desc = "[e]xit the terminal and return to your code" }
)

-------------------------------------------------------------------------------
-- Error handling

keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-------------------------------------------------------------------------------
-- Window Navigation

keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-------------------------------------------------------------------------------

-- SECTION: File Navigation

-- Ctrl + n
keymap(
    "n",
    "<leader>fn",
    ":bn<CR>",
    { desc = "[f]ile [n]ext"}
)

-- space, fc
keymap(
    "n",
    "<leader>fc",
    ":bd<CR>",
    { desc = "[f]ile [c]lose" }
)

-- NOTE: space, fe 
-- This keymap requires the plugin: oil.nvim
keymap(
    "n",
    "<leader>fe",
    "<CMD>Oil<CR>",
    { desc = "[f]ile [e]xplorer - parent directory" }
)

-------------------------------------------------------------------------------
keymap("n", "<leader>mo", ":PeekOpen<CR>")
keymap("n", "<leader>mc", ":PeekClose<CR>")
