return {
  -- Ensure lush and darcula-solid are loaded first
  {
    "rktjmp/lush.nvim"
  },
  {
    "briones-gabriel/darcula-solid.nvim",
    config = function()
      -- Custom configuration logic for darcula-solid
      vim.opt.background = 'dark'
      vim.g.colors_name = 'darcula-solid-custom'

      local lush = require('lush')
      local darcula_solid = require('lush_theme.darcula-solid')
      local spec = lush.extends({darcula_solid}).with(function()
          -- Your modifications go here...
          local yellow = lush.hsl(37, 100, 71)

          return {
              -- Example customizations
              Type { fg = yellow },
              Function { fg = darcula_solid.Normal.fg },
          }
      end)

      -- Apply the custom theme
      lush(spec)
    end,
    -- This tells lazy.nvim to load darcula-solid immediately after lush.nvim
    after = "rktjmp/lush.nvim"
  },
  -- Other plugins...
}

