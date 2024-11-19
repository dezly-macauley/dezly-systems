-- The leader key is the first key that you press when you want
-- to start typing a keyboard shortcut
require("settings.leader_key")

-- The core settings of the Neovim Editor
require("settings.core_options")

-------------------------------------------------------------------------------
-- This will activate Neovim's plugin manager called `lazy.nvim`.
--  This will load the default plugins from LazyVim, as well as your own
--  plugins that are in the `plugins` directory (which have further been 
--  grouped according to functionality).
require("settings.plugin_manager")

-------------------------------------------------------------------------------
-- SECTION: Custom Keyboard Shortcuts

-- This will load keyboard shortcuts from the file:
-- `./lua/config/keyboard_shortcuts.lua`
require("settings.keyboard_shortcuts")

-------------------------------------------------------------------------------
--- SECTION: Automatic Code / Text Formating

-- Disable LazyVim's auto format on save
-- This option is placed at the end of the configuration to ensure that 
-- nothing else overwrites its effect.
vim.g.autoformat = false

-------------------------------------------------------------------------------
--- SECTION: Hide Markings for Invible Characters

-- Do not show invisible characters like tabs and spaces
vim.opt.list = false
-------------------------------------------------------------------------------
--- SECTION: Indentation

-- When you press the `Tab` key in insert mode,
-- instead of inserting one single Tab character,
-- Neovim will insert a number of spaces.
-- This will make your indentation more predictable
vim.opt.expandtab = true

-- Four-Space indentation
-- Pressing `Tab` is the same as pressing space 4 times
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-------------------------------------------------------------------------------
