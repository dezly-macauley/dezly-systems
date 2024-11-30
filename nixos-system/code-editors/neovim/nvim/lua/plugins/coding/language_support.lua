return {


    -- NOTE: To check what the correct names for for the languages are:
    -- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers

{
  "neovim/nvim-lspconfig",
  config = function()
	
	local lsp = require("lspconfig")

    lsp.rust_analyzer.setup({})

  end,
}

}

