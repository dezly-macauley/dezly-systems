return {

    -- NOTE: To check what the correct names for for the languages are:
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lsp-configs

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

            -- Low Level Programming
            lsp.rust_analyzer.setup({}) -- Rust

            -- Back-End Development
            lsp.gopls.setup({}) -- Go

            -- Front-End Development
            lsp.svelte.setup({})-- Svelte

            -- User Interface Design
            lsp.tailwindcss.setup({}) -- Tailwind CSS
            lsp.css.setup({}) -- CSS
            lsp.html.setup({}) -- Html

        end,
    },

}
