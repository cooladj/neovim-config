return {
	{
		"sourcegraph/sg.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },

		-- If you have a recent version of lazy.nvim, you don't need to add this!
		build = "nvim -l build/init.lua",

		config = function()
			-- Keybindings
			vim.api.nvim_set_keymap("n", "<leader>C", ":CodyAsk<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>S", ":CodyChat {title}<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>R", ":CodyRestart<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap(
				"n",
				"<leader>T",
				":CodyTask {task_description}<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap("n", "<leader>A", ":CodyTaskAccept<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>N", ":CodyTaskNext<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>P", ":CodyTaskPrev<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>V", ":CodyTaskView<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "<leader>O", ":CodyToggle<CR>", { noremap = true, silent = true })
		end,
	},
}
