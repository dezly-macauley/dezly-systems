-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here:

-------------------------------------------------------------------------------
-- SECTION: Typing convience
local o = vim.opt

-------------------------------------------------------------------------------
--- SECTION: Automatic Formating on save

-- Disable LazyVim's auto format on save
vim.g.autoformat = false

-------------------------------------------------------------------------------
-- SECTION: User Interface

-- A horizontal line that highlights where your cursor is
o.cursorline = true

-- Adds a vertical line on the right that shows when you are reaching
-- 80 characters on a line.
-- This helps to keep your code neat and concise.
o.colorcolumn = "80"

-------------------------------------------------------------------------------
