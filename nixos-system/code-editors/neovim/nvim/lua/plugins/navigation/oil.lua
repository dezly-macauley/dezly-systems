return {

	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({

				-- When a file is deleted, it will be sent
				-- to the trash instead of being immediately
				-- deleted.
				delete_to_trash = true,
				
				-- Disable the default keymaps so they don't
				-- clash with any of your custom keymaps.
				use_default_keymaps = false,

				keymaps = {
					["<CR>"] = "actions.select",
				},
				 
				view_options = {
					show_hidden = true,
				},

			})
		end,
	},

}
