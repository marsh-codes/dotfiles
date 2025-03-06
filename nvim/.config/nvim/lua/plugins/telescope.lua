return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						hidden = true,
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>p", builtin.find_files, {})
			vim.keymap.set("n", "<leader>f", builtin.live_grep, {})

			require("telescope").load_extension("ui-select")
		end,
	},
}
