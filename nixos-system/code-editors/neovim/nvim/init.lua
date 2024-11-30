require("core-settings.leader_key")
require("core-settings.editor_options")
require("core-settings.plugin_manager")
require("core-settings.custom_keymaps")

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
