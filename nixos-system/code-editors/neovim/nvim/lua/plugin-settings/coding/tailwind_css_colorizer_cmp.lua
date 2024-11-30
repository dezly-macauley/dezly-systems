return {

        -- Adds Tailwind CSS color hints to the nvim-cmp completion menuNeovim plugin to add vs-code-style TailwindCSS color hints to the nvim-cmp completion menu
        {
            "roobert/tailwindcss-colorizer-cmp.nvim",
            config = function()
                require("tailwindcss-colorizer-cmp").setup({
                    color_square_width = 2,
                })
            end

        },

}
