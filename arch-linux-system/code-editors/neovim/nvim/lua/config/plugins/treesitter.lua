return {

    {
        "nvim-treesitter/nvim-treesitter",

        -- This will ensure that syntax highting for each language is updated
        -- when you use update your configuration using the plugin manager's
        -- `:Lazy sync` command
        build = ":TSUpdate",


	    config = function()
	        require("nvim-treesitter.configs").setup({

                -- NOTE: To see what languages are available 
                -- to install check the following
                --[[
                    https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
                --]]

                ensure_installed = { 
                    
                    -- Low Level Programming
                    "rust", 
                    
                    -- Back-End Development
                    "go", 
                    "python",

                    -- Front-End Development
                    "svelte", "typescript", "javascript",
                    "html", "css",

                    -- Web3
                    "solidity",

                    -- Database Management
                    "sql",

                    -- Documentation 
                    "markdown", "markdown_inline",
                    
                    -- Scripting
                    "bash", "lua", "nix",

                    -- Data Serialisation
                    "toml", "gomod", "json5"
                    
                },

                -- I want to control what gets installed on my setup
                auto_install = false,

                -- Enables syntax highlighting based on the treesitter parsers,
                -- which are more accurate than Neovim's built-in ones.
                highlight = { enable = true },

                -- Enable automatic indentation of your code, 
                -- based on Treesitter's understanding of the language
                indent = { enable = true }

	    })
	    end,
	},

}
