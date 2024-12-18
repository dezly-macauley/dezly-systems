return {

    -- NOTE: To check what the correct names for for the languages are:
    -- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lsp-configs

    {
        "neovim/nvim-lspconfig",
        config = function()

            local lsp = require("lspconfig")

            -- NOTE: nvim-lspconfig does not actually install 
            -- any of these language servers or the programs that 
            -- they require. 
            -- It simply provides a way for Neovim to use the 
            -- language servers that have been installed on your system.
            -------------------------------------------------------------
            -- E.g. Adding the line 
            -- `lsp.rust_analyzer.setup({})` won't do anything
            -- unless you have Rust Analyzer on your system

            -------------------------------------------------------------------
            -- SUB_SECTION: Low Level Programming
        
            -- NOTE: Required Packages:
            -- rust-analyzer
            lsp.rust_analyzer.setup({}) -- Rust
       
            -------------------------------------------------------------------
            -- SUB_SECTION: Back-End Development & AI

            -- NOTE: Required Packages:
            -- gopls
            lsp.gopls.setup({}) -- Go

            -- NOTE: Required Packages:
            -- deno
            lsp.pyright.setup({}) -- Python

            -------------------------------------------------------------------
            -- SUB_SECTION: Front-End Development

            -- NOTE: Required Packages:
            -- deno
            lsp.denols.setup({}) -- TypeScript, JavaScript

            -------------------------------------------------------------------
            
            lsp.solidity_ls.setup({}) -- Solidity

            -- npm install -g @vscode-solidity-server
            -- refer to the the guide in `dezly-dojos/typescript-dojo`
            -- on how to locally install npm global packages on NixOS

            -------------------------------------------------------------------
            lsp.sqls.setup({})

            -------------------------------------------------------------------
            -- User Interface Design
            lsp.tailwindcss.setup({}) -- Tailwind CSS

            -- NOTE: Do not install the language servers 
            -- via configuration.nix
            -- just download directly from npm

            -- npm install -g svelte-language-server
            lsp.svelte.setup({}) -- Svelte

            -- npm install -g @vtsls/language-server
            -- refer to the the guide in `dezly-dojos/typescript-dojo`
            -- on how to locally install npm global packages on NixOS
            lsp.vtsls.setup({}) -- TypeScript, JavaScript, React (.tsx, .jsx)        

            -- To use html, cssls, and jsonls 
            -- you will need to have the following
            -- package installed and available on your path.
            -- vscode-langservers-extracted
            lsp.jsonls.setup({}) -- JSON
            lsp.cssls.setup({}) -- CSS
            lsp.html.setup({}) -- Html

            -------------------------------------------------------------------
            -- SECTION: Scripting 

            lsp.lua_ls.setup({}) -- Lua
            -------------------------------------------------------------------

        end,
    },

}
