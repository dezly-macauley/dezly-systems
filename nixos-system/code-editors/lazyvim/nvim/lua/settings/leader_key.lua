local o = vim.opt
local g = vim.g


-------------------------------------------------------------------------------

-- The <leader> key is the first key that you press, 
-- when you want to activate a custom shortcut in Neovim

-- This will set the <leader> key to the space key on a global level
-- The leader key will be set to space even when you don't have a file open
g.mapleader = " "

-------------------------------------------------------------------------------
-- This will set the <leader> key to a single backslash 
-- on a local level.
-- This is useful when you want to create keyboard shortcuts that only work
-- on specific files
g.maplocalleader = "\\"

-------------------------------------------------------------------------------

-- When you press the leader key, Neovim will give you 500 milliseconds
-- (half a second) for you to enter a keyboard shortcut.
-- If you press the shortcut faster than that, 
-- it will be immediately executed.
-- If you are trying to use the Neovim plugin in VS code then that
-- time will be increased to 1000 milliseconds (1 second) to give VS Code
-- a chance to catch up
o.timeoutlen = vim.g.vscode and 1000 or 500

-------------------------------------------------------------------------------
