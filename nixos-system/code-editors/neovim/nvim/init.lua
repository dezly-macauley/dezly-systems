require("core-settings.leader_key")
require("core-settings.editor_options")
require("core-settings.plugin_manager")
require("core-settings.custom_keymaps")
-------------------------------------------------------------------------------
-- SECTION: Vyper LSP
-- Make sure that vyper-lsp is added to your path

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.vy" },
  callback = function()
    vim.lsp.start({
      name = "vyper-lsp",
      cmd = { "vyper-lsp" },
      root_dir = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1])
    })
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.vy" },
  callback = function()
    vim.lsp.start({
      name = "vyper-lsp",
      cmd = { "vyper-lsp" },
      root_dir = vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true })[1])
    })
  end,
})

-- vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-k>', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '[d', '<Cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', ']d', '<Cmd>lua vim.lsp.diagnostic.goto_next()<CR>', { noremap = true, silent = true })

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
