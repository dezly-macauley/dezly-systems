-- CAN YOU SEE THIS!!!!!

-- These are NvChad's options.
-- The namespace nvchad.options is used to make it clear that this is not a file  
-- called `options` that is located in `.config/nvim`
-- This file is actually located in the following location:
-- nvim .local/share/nvim/lazy/NvChad/lua/nvchad/options.lua

-- NOTE: Uncomment this line to use NvChad's options
-- require "nvchad.options"

--===================================================================================

-- local o = vim.o
-- o.cursorlineopt ='line' -- to enable cursorline!

-- NOTE: Setting local variables to reduce the amount of typing you have to do

-- This is for modifying list-style options
local opt = vim.opt

-- This is for simple global options
-- E.g. vim.o.number = true 
local o = vim.o

-- `vim.g` This is for global options
-- This is used to change settingd that will affect the entire editor,
-- or set an option on a plugin that will affect the entire editor.
-- E.g. vim.g.mapleader = " "
local g = vim.g

-- o.laststatus = 3
-- o.showmode = false
--


-------------------------------------------------------------------------------

-- SECTION: Clipboard Functionality

-- This will sync the clipboard between your Operating System and Neovim, 
-- so you can copy and paste into and out of Neovim. 
o.clipboard = "unnamedplus"
-------------------------------------------------------------------------------

-- SECTION: User Interface

-- Enable line numbers
o.number = true


-------------------------------------------------------------------------------


-- o.cursorline = true
-- o.cursorlineopt = "number"

-- Indenting
-- o.expandtab = true
-- o.shiftwidth = 2
-- o.smartindent = true
-- o.tabstop = 2
-- o.softtabstop = 2
--
-- opt.fillchars = { eob = " " }
-- o.ignorecase = true
-- o.smartcase = true
-- o.mouse = "a"

-- Numbers
-- o.numberwidth = 2
-- o.ruler = false

-- disable nvim intro
-- opt.shortmess:append "sI"

-- o.signcolumn = "yes"
-- o.splitbelow = true
-- o.splitright = true
-- o.timeoutlen = 400
-- o.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
-- o.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
-- opt.whichwrap:append "<>[]hl"

-- disable some default providers
-- g.loaded_node_provider = 0
-- g.loaded_python3_provider = 0
-- g.loaded_perl_provider = 0
-- g.loaded_ruby_provider = 0

-- add binaries installed by mason.nvim to path
-- local is_windows = vim.fn.has "win32" ~= 0
-- local sep = is_windows and "\\" or "/"
-- local delim = is_windows and ";" or ":"
-- vim.env.PATH = table.concat({ vim.fn.stdpath "data", "mason", "bin" }, sep) .. delim .. vim.env.PATH

--===================================================================================
