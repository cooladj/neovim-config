vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text block down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text block up" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without spaces" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half page" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result" })
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste from unnamed register" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy line to clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yank" })
vim.keymap.set("i", "<C-i>", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Q in normal mode" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format with LSP" })
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Next quickfix item" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Previous quickfix item" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next location list item" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous location list item" })
vim.keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Search and replace word under cursor" }
)
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make file executable" })
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Trigger plugin function" })
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end, { desc = "Reload Neovim config" })
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize window sizes" })
vim.keymap.set("n", "<leader>sc", "<cmd>close<CR>", { desc = "Close current split" })
vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false, desc = "Run code in buffer" })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false, desc = "Run current file" })
vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false, desc = "Run file in new tab" })
vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false, desc = "Run entire project" })
vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false, desc = "Close running process" })
vim.keymap.set(
	"n",
	"<leader>crf",
	":CRFiletype<CR>",
	{ noremap = true, silent = false, desc = "Set filetype for code runner" }
)
vim.keymap.set(
	"n",
	"<leader>crp",
	":CRProjects<CR>",
	{ noremap = true, silent = false, desc = "Configure projects for code runner" }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>ts",
	"<cmd>botright split<CR><cmd>resize 7<CR><cmd>term<CR>",
	{ noremap = true, silent = true, desc = "Open terminal in horizontal split at the bottom with specified height" }
)
