-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Automatic (space + l) - Bring up the LazyVim menu. Press U to update plugins_required

-------------------------------------------------------------------------------
-- SECTION: Local Variables

local kms = vim.keymap.set
-- local nrs = { noremap = true, silent = true }

-------------------------------------------------------------------------------

-- SECTION: LazyVim Keymaps

-- SUB_SECTION: `trouble.nvim`
-- <leader>xx = Open trouble.nvim

-------------------------------------------------------------------------------

-- SECTION: Terminal Navigation

kms("n", "<leader>to", ":split<CR>:terminal<CR>:setlocal nonumber norelativenumber<CR>i", {
  noremap = true,
  silent = true,
  desc = "[t]erminal [o]pens in a horizonal window",
})

-------------------------------------------------------------------------------

-- Alt+n | Normal Mode Return
-- Switch back to `Normal Mode` when using the `Terminal Mode`,
-- and then go back to the screen that has your code.
-- Press `Alt n`
kms("t", "<M-n>", "<C-\\><C-n><C-w>w", {
  noremap = true,
  silent = true,
  desc = "Leaves the terminal open and switches to your code",
})
-------------------------------------------------------------------------------

-- Switch between your current split and then one you previously had open
-- Useful for switching between your code and an open terminal

kms("n", "<leader>ss", "<C-w>w", {
  noremap = true,
  silent = true,
  desc = "[s]split [s]switch",
})
-------------------------------------------------------------------------------

-- SECTION: File Navigation

kms("n", "<Tab>", ":bn<CR>", {
  noremap = true,
  silent = true,
  desc = "Switch to the next open file",
})

-------------------------------------------------------------------------------

-- Close the current file
-- Shift Tab
kms("n", "<S-Tab>",
    ":bd<CR>",
    {
        noremap = true,
        silent = true,
        desc = "[c]lose [f]ile",
    }
)

-------------------------------------------------------------------------------

-- NOTE: This requires the plugin `oil.nvim`

kms("n", "<leader>fe", "<CMD>Oil<CR>", { desc = "[f]ile [e]xplorer" })

-------------------------------------------------------------------------------

-- NOTE: This requires the plugin `neo-tree.nvim`

-- kms("n", "<leader>fe", ":Neotree<CR>", {
--   noremap = true,
--   silent = true,
--   desc = "[f]ile [t]ree",
-- })

-------------------------------------------------------------------------------
-- SECTION: Line Numbers

-- <leader>ln | Line Numbers
-- Switch between relative line numbers, and absolute line numbers
kms("n", "<leader>ln", ":set relativenumber!<CR>", {
  noremap = true,
  silent = true,
  desc = "[l]ine [n]umbers",
})

-------------------------------------------------------------------------------
-- SECTION: Markdown Editing

kms(
    "n", "<leader>mo", 
    ":PeekOpen<CR>", {
    noremap = true,
    silent = true,
    desc = "[m]arkdown [o]pen",
})

-------------------------------------------------------------------------------
