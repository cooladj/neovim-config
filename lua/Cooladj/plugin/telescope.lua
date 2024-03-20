return{
  -- Other plugin configurations...

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
      local builtin = require('telescope.builtin')

      -- Find files with Telescope
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {desc = "Telescope: Find Files"})

      -- Find files in Git with Telescope
      vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = "Telescope: Git Files"})

      -- Grep string with Telescope
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end, {desc = "Telescope: Grep String"})

      -- Help tags with Telescope
      vim.keymap.set('n', '<leader>vh', builtin.help_tags, {desc = "Telescope: Help Tags"})
    end
  },

  -- Further plugin configurations...
}

