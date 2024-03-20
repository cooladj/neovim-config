return {
  -- Other plugin configurations...
  
  {
    'tpope/vim-fugitive', -- The plugin repository
    config = function()
      -- Basic key mapping to open Git interface
      vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>", { silent = true })
      
      -- Creating a custom augroup for Fugitive-related autocmds
      local ThePrimeagen_Fugitive = vim.api.nvim_create_augroup("ThePrimeagen_Fugitive", {})
      
      local autocmd = vim.api.nvim_create_autocmd
      autocmd("BufWinEnter", {
          group = ThePrimeagen_Fugitive,
          pattern = "*",
          callback = function()
              if vim.bo.filetype ~= "fugitive" then
                  return
              end
              
              local bufnr = vim.api.nvim_get_current_buf()
              local opts = {buffer = bufnr, remap = false, silent = true}
              
              -- Keymap for Git push
              vim.keymap.set("n", "<leader>p", "<cmd>Git push<CR>", opts)
              
              -- Keymap for Git pull with rebase
              vim.keymap.set("n", "<leader>P", "<cmd>Git pull --rebase<CR>", opts)
              
              -- Keymap to set upstream branch for push
              vim.keymap.set("n", "<leader>t", "<cmd>Git push -u origin ", opts)
          end,
      })
    end
  },
  
  -- More plugin configurations...
}

