require("leader_key_settings")
require("editor_options")
require("plugin_manager_settings")
require("custom_shortcuts")

-------------------------------------------------------------------------------
-- SECTION: Cursorline Colour
vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#22002b' })

-------------------------------------------------------------------------------
-- SECTION: Neovide Settings

if vim.g.neovide then
    
    -- Enable transparency when using Neovide
    vim.g.neovide_transparency = 0.85

end

-------------------------------------------------------------------------------
