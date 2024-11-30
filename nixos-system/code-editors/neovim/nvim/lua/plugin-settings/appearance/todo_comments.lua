return {

    {
        "folke/todo-comments.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" }
        },
        -- cmd = { "TodoTrouble", "TodoTelescope" },
        -- event = "VeryLazy",
        config = function()
            require("todo-comments").setup({
                signs = true, -- show icons in the signs column
                sign_priority = 8, -- sign priority
                keywords = {
                    SECTION = { icon = "🚀", color = "section" },
                    SUB_SECTION = { icon = "🛩️", color = "sub_section" },
                    NOTE = { icon = "📚", color = "note" },
                    ABOUT = { icon = "📜", color = "about" },
                    AUDIT = { icon = "🕵️", color = "audit" }
                },
                colors = {
                    note = { "#00ff91" },
                    section = { "#c048f7" },
                    sub_section = { "#ff0062" },
                    audit = { "#00ff50" },
                    about = { "#ffb000" }
                },

            })
        end,

        -- keys = {
        --   { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
        --   { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
        --   { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "Todo (Trouble)" },
        --   { "<leader>xT", "<cmd>Trouble todo toggle filter = {tag = {TODO,FIX,FIXME}}<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
        --   { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
        --   { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
        -- },
  
    },

}
