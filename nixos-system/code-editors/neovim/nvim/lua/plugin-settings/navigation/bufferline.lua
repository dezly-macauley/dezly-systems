return {

    {
        'akinsho/bufferline.nvim', 
        lazy = false,
        priority = 1000,
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("bufferline").setup{}
        end
    }

}
