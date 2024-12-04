return {

    -- NOTE: To check what the correct names for for the languages are:
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lsp-configs
    -- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers

    {
        "neovim/nvim-lspconfig",
        config = function()

            local lsp = require("lspconfig")

            -- NOTE: nvim-lspconfig does not actually install 
            -- any of these language servers. It simply provides
            -- a way for Neovim to use the language servers that have been
            -- installed on your system.
            -- E.g. `lsp.rust_analyzer.setup({})` this won't do anything
            -- unless you have Rust Analyzer on your system


            -------------------------------------------------------------------
            -- Low Level Programming
            lsp.rust_analyzer.setup({}) -- Rust
            
            -------------------------------------------------------------------
            -- Back-End Development
            lsp.gopls.setup({}) -- Go
            lsp.pyright.setup({}) -- Python
            lsp.intelephense.setup({}) -- PHP
        
            -------------------------------------------------------------------
        
            -- Smart Contract Development
        
            lsp.solidity_ls.setup({}) -- Solidity

            -- npm install -g @vscode-solidity-server
            -- refer to the the guide in `dezly-dojos/typescript-dojo`
            -- on how to locally install npm global packages on NixOS

            -------------------------------------------------------------------
            -- Front-End Development
            

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
