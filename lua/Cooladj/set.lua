-- Set the cursor shape to the default for insert mode
vim.opt.guicursor =
	"n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
-- Show line numbers
vim.opt.nu = true
-- Show relative line numbers
vim.opt.relativenumber = true

-- Set the number of spaces that a tab character represents
vim.opt.tabstop = 4
-- Set the number of spaces to use for autoindent and soft tab stops
vim.opt.softtabstop = 4
-- Set the number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 4
-- Convert tabs to spaces
vim.opt.expandtab = true

-- Enable smart indenting for new lines
vim.opt.smartindent = true

-- Do not wrap lines
vim.opt.wrap = false

-- Do not create a swap file
vim.opt.swapfile = false
-- Do not create backup files
vim.opt.backup = false
-- Set the directory where undo files are stored
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- Enable persistent undo
vim.opt.undofile = true

-- Do not highlight all matches on previous search pattern
vim.opt.hlsearch = false
-- Highlight matches as you type
vim.opt.incsearch = true

-- Enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- Set the number of lines to keep above and below the cursor
vim.opt.scrolloff = 8
-- Always show the sign column, to avoid text shifting when signs are displayed
vim.opt.signcolumn = "yes"
-- Allow @-@ to be part of a file name
vim.opt.isfname:append("@-@")

-- Set the delay, in milliseconds, for which Neovim waits to trigger the plugin event after a change
vim.opt.updatetime = 50

-- Highlight the 80th column
vim.opt.colorcolumn = "80"

-- Use the '+' register for all yank, delete, change, and put operations
vim.opt.clipboard = "unnamedplus"

vim.cmd.colorscheme = "darcula-solid-custom"
