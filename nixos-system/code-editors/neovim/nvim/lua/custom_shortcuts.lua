local keymap = vim.keymap.set

-------------------------------------------------------------------------------
-- SECTION: Terminal

keymap(
    "n", 
    "<leader>t", 
    ":split<CR>:terminal<CR>:setlocal nonumber norelativenumber<CR>i", 
    { desc = "[t]erminal" }
)


-- Alt+j | Normal Mode Return
-- Switch back to `Normal Mode` when using the `Terminal Mode`,
-- and then go back to the screen that has your code.
-- Press `Alt j`
keymap(
    "t", 
    "<M-j>", 
    "<C-\\><C-n><C-w>w", 
    { desc = "[J]ump out of the current terminal and back to your code" }
)

-------------------------------------------------------------------------------

-- Window Navigation

keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-------------------------------------------------------------------------------

keymap("n", "<C-n>", ":bn<CR>", { desc = "Switch to the next open file"})


-- requires: oil.nvim
vim.keymap.set("n", "<leader>fe", "<CMD>Oil<CR>", { desc = "Open parent directory" })
