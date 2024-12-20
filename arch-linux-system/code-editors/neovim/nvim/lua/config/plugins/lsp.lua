return {

  {
    "neovim/nvim-lspconfig",
    config = function()

      -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lsp-configs
      require("lspconfig").lua_ls.setup {}
    end
  }

}
