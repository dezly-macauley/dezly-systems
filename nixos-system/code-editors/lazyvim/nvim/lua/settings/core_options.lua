-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here:

-------------------------------------------------------------------------------

local o = vim.opt

-------------------------------------------------------------------------------
-- SECTION: Mouse Support

-- Enables comprehensive mouse support throughout Neovim
-- Terminal emulators like Alacritty already provide this functionality
-- but it doesn't hurt to leave this on.
o.mouse = "a"

-------------------------------------------------------------------------------
-- SECTION: Clipboard Functionality

-- Sync clipboard between your OS and Neovim,
-- so you can copy and paste into and out of Neovim.
o.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

-------------------------------------------------------------------------------
-- SECTION: Search Functionality

-- Searches will not be case sensitive
vim.opt.ignorecase = true

-- Searches will become case sensitve when the first word of your search,
-- starts with a capital letter.
vim.opt.smartcase = true

-------------------------------------------------------------------------------
-- SECTION: User Interface

-- This will display a prompt that will ask you if you want to save,
-- if you try to close an unsaved file.
o.confirm = true


-- Enables the use of true colors (24-bit or RGB colours)
-- This ensures that plugins that use colours are displayed correctly.
-- This setting requires a terminal emulator like Alacritty,
-- that supports true colours.
o.termguicolors = true


-- Adds a column of numbers on the left,
-- that shows you what line number you are on
o.number = true

-- Adds second vertical column is shown on the left,
-- which shows the line number that you are on.
-- While the second numbered column shows the relative postion
-- of the other lines
o.relativenumber = true

-- When you are scrolling through code or text,
-- and `relativenumber` is set to true,
-- this will make sure that there are always 4 lines above and below,
-- the current line that you are on.
-- Neovim will only break this rule when you are close to the first and last
-- line of your file.
-- It is easier to see the effects of this when you have
-- the `relativenumber` option turned on
vim.opt.scrolloff = 4

-- The words on each line will not wrap, No matter the width of the terminal.
vim.opt.wrap = false

-- A horizontal line that highlights where your cursor is
o.cursorline = true

-- Adds a vertical line on the right that shows when you are reaching
-- 80 characters on a line.
-- This helps to keep your code neat and concise.
o.colorcolumn = "80"

-- This will add one extra collumn of space on left hand side of the numbers,
-- so that you can see the symbols from error hadling plugins,
-- like trouble.nvim
vim.opt.signcolumn = "yes"

-------------------------------------------------------------------------------

-- Insert indenation automatically
vim.opt.smartindent = true

-- New horizonal windows will always be created below the current window.
vim.opt.splitbelow = true

-- New vertical windows will always appear to the right of current window.
vim.opt.splitright = true

-- This will ensure that the status line at the bottom remains as one line
-- It prevents the status line from displaying twice,
-- when you dividing the screen into multiple windows
vim.opt.laststatus = 3

-------------------------------------------------------------------------------
