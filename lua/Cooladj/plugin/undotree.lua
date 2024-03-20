return {
  {
    "mbbill/undotree",
    config = function()
      -- Since undotree does not require a Lua module to be loaded via require,
      -- you directly set the keymap without loading a module.
      vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", {silent = true, noremap = true})
    end
  }
}

