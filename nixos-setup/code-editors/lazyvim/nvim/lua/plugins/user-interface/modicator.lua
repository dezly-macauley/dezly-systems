return {

    -- This works with the plugin lualine
    -- Makes your cursorline number the same colour as the current VIM Mode

    {
        "mawkler/modicator.nvim",
        config = function()
            require("modicator").setup({

                highlights = {
                    defaults = {
                        bold = true,
                    },
                },

            })
        end
    }

}
