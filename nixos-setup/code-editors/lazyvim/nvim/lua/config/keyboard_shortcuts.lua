-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Automatic (space + l) - Bring up the LazyVim menu. Press U to update plugins_required

-------------------------------------------------------------------------------
-- SECTION: Local Variables

local kms = vim.keymap.set
local nrs = { noremap = true, silent = true }

-------------------------------------------------------------------------------
-- SECTION: File Navigation

-- NOTE: This requires the plugin `oil.nvim`
kms("n", "<leader>fe", "<CMD>Oil<CR>", { desc = "[f]ile [e]xplorer" })

-------------------------------------------------------------------------------
