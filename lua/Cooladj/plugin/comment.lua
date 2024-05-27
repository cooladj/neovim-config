return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		-- import comment plugin safely
		local comment = require("Comment")

		local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

		-- enable comment
		comment.setup({
			-- for commenting tsx, jsx, svelte, html files
			pre_hook = ts_context_commentstring.create_pre_hook(),
		})

		-- set keybinding for commenting
		vim.api.nvim_set_keymap(
			"n",
			"<C-_>",
			'<CMD>lua require("Comment.api").toggle.linewise.current()<CR>',
			{ noremap = true, silent = true }
		)
		vim.api.nvim_set_keymap(
			"v",
			"<C-_>",
			'<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
			{ noremap = true, silent = true }
		)
	end,
}
