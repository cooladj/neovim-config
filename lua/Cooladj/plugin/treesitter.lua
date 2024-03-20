
return{
  -- Other plugin configurations...

  {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/playground",
      "nvim-treesitter/nvim-treesitter-context"
    },
    config = function()
      require'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
        ensure_installed = { "angular", "java", "vimdoc", "javascript", "typescript", "c", "lua", "rust" },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        auto_install = true,

        highlight = {
          enable = true, -- Enable tree-sitter highlighting
          additional_vim_regex_highlighting = false, -- Recommended false for performance
        },
      }
    end
  },

  -- Further plugin configurations...
}
