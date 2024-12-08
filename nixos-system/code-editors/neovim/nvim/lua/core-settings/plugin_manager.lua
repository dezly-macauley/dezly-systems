local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- This is where you tell the plugin manager where to look for directories
  -- that contain plugin files
  spec = {
    -- import/override with your plugins
    { import = "plugin-settings.navigation" },
    { import = "plugin-settings.appearance" },
    { import = "plugin-settings.coding" },
    { import = "plugin-settings.syntax-highlighting" },
  },

})
