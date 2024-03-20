return {
  {
    "christoomey/vim-tmux-navigator",
    config = function()
      -- Define key mappings for navigating tmux panes and vim splits seamlessly
      local map = vim.api.nvim_set_keymap
      local opts = {silent = true, noremap = true}

      map("n", "<c-h>", "<cmd>TmuxNavigateLeft<CR>", opts)
      map("n", "<c-j>", "<cmd>TmuxNavigateDown<CR>", opts)
      map("n", "<c-k>", "<cmd>TmuxNavigateUp<CR>", opts)
      map("n", "<c-l>", "<cmd>TmuxNavigateRight<CR>", opts)
      map("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<CR>", opts)
    end
  }
}

