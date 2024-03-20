return{
  -- Other plugin configurations...

  {
    "theprimeagen/harpoon",
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>a", mark.add_file, {desc = "Harpoon: Add File"})
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, {desc = "Harpoon: Toggle Quick Menu"})
    end
  },

  -- Further plugin configurations...
}

