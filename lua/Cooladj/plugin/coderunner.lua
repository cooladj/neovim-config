return{
    {
        "CRAG666/code_runner.nvim",
        dependencies = "nvim-lua/plenary.nvim", -- If code_runner has dependencies, specify them here
        config = function()
            require('code_runner').setup({
                filetype = {
                    java = {
                        "cd $dir &&",
                        "javac $fileName &&",
                        "java $fileNameWithoutExt"
                    },
                    python = "python3 -u",
                    typescript = "deno run",
                    rust = {
                        "cd $dir &&",
                        "rustc $fileName &&",
                        "$dir/$fileNameWithoutExt"
                    },
                },
            })
        end,
        -- Specify when to load this plugin if you want to lazy-load. For example:
        -- ft = { "java", "python", "typescript", "rust" }, -- Lazy-load for these file types
    },
    -- Include other plugins here...
}
