-- Copy pasting
vim.opt.clipboard = 'unnamedplus'

-- Use this to run this whole file from top to bottom without having to restart Neovim
-- source %
-- % is a placeholder that means "This current file"


-- How to run a print statment in Neovim
-- print("advent of neovim")
-- You can use Shift+V to select a line and then press :
-- then type lua and enter to run it

-- How to run a function in Neovim
SayHello = function() print "hello" end

-- NOTE: Operators (d = delete)
-- dw = delete word
-- d$ = delete until the end of the line
-- d0 = delete until the start or the line
-- dd = delete the line

-- NOTE: Motions
-- e = end of the current word (including the last letter)

-- Count, Operator, Motion
-- E.g. 3dw = perform this action 3 times: delete word
-- fskfs fksf kfs fk fwfkw 
-- u = undo last commands
-- U = undo all changes made to the line

-------------------------------------------------------------------------------
-- SECTION: Neovim Options

-- Indentation
vim.opt.shiftwidth = 4

-------------------------------------------------------------------------------
-- SECTION: Plugin Manager

require("config.lazy")


-------------------------------------------------------------------------------
-- SECTION: Custom Keymaps

vim.keymap.set("n", "-", "<cmd>Oil<CR>")

-------------------------------------------------------------------------------
