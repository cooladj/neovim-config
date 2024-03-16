-- Set the leader key to a space
vim.g.mapleader = " "

-- Set the leader key combination for 'pv' to open the command-line window
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- In visual mode, move the selected block of text one line down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- In visual mode, move the selected block of text one line up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- In normal mode, join lines without spacing and return to the original position
vim.keymap.set("n", "J", "mzJ`z")

-- In normal mode, scroll down half a page and center the view
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- In normal mode, scroll up half a page and center the view
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- In normal mode, jump to the next search result and center the view
vim.keymap.set("n", "n", "nzzzv")

-- In normal mode, jump to the previous search result and center the view
vim.keymap.set("n", "N", "Nzzzv")

-- In visual mode, delete text and paste from the unnamed register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy selected text to the clipboard in normal and visual modes
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Copy the entire line to the clipboard in normal mode
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete selected text without yanking in normal and visual modes
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Map Ctrl+Shift to Escape in insert mode
vim.keymap.set("i", "<S-c>", "<Esc>")

-- Disable the Q command in normal mode
vim.keymap.set("n", "Q", "<nop>")

-- Format the current buffer using the LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Jump to the next item in the quickfix list and center the view
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")

-- Jump to the previous item in the quickfix list and center the view
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Jump to the next item in the location list and center the view
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")

-- Jump to the previous item in the location list and center the view
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Start a search and replace for the word under the cursor across the entire file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Trigger the 'make_it_rain' function of the 'CellularAutomaton' plugin
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Reload the current Vim configuration file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Move to the left window with Ctrl+h
vim.keymap.set("n", "<C-h>", "<C-w>h", {silent = true, noremap = true})

-- Move to the right window with Ctrl+l
vim.keymap.set("n", "<C-l>", "<C-w>l", {silent = true, noremap = true})


--Make a new window in left
vim.keymap.set("n", "<C-t>", "<cmd>leftabove vsplit | execute 'edit' bufname('#')<CR>", {silent = true})

-- Map Ctrl+c to close the current window in normal mode
vim.keymap.set("n", "<C-c>", "<cmd>close<CR>", {silent = true})
--Open Neotree
vim.api.nvim_set_keymap('n', '<leader>ex', ':Neotree<cr>', {noremap = true, silent = true})
--Start grep look
vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

