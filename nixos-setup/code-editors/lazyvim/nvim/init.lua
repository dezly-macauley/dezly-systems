-- The leader key is the first key that you press when you want
-- to start typing a keyboard shortcut
require("config.leader_key_settings")

-- The core settings of the Neovim Editor
require("config.options")

-- bootstrap lazy.nvim, LazyVim and your plugins
-- This will activate Neovim's plugin manager called "lazy.nvim.
--  This will load the default plugind from LazyVim, as well as your own
--  plugins that are in the `plugins` directory, and then further grouped
--  by functionality
require("config.lazy")

-- Your custom keyboard shortcuts
require("config.keyboard_shortcuts")

-------------------------------------------------------------------------------
