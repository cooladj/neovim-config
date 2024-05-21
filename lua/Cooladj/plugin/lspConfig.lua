return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		-- Import required plugins
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local keymap = vim.keymap

		-- Options for key mappings
		local opts = { noremap = true, silent = true }

		-- Function to set keybinds and other configurations when the LSP server attaches to a buffer
		local on_attach = function(client, bufnr)
			opts.buffer = bufnr

			-- Key mappings
			local mappings = {
				{ "n", "gR", "<cmd>Telescope lsp_references<CR>", "Show LSP references" },
				{ "n", "gD", vim.lsp.buf.declaration, "Go to declaration" },
				{ "n", "gd", "<cmd>Telescope lsp_definitions<CR>", "Show LSP definitions" },
				{ "n", "gi", "<cmd>Telescope lsp_implementations<CR>", "Show LSP implementations" },
				{ "n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", "Show LSP type definitions" },
				{ "n", "K", vim.lsp.buf.hover, "Show documentation for what is under cursor" },
				{ "n", "<leader>ca", vim.lsp.buf.code_action, "See available code actions" },
				{ "n", "<leader>rn", vim.lsp.buf.rename, "Smart rename" },
				{ "n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", "Show buffer diagnostics" },
				{ "n", "<leader>d", vim.diagnostic.open_float, "Show line diagnostics" },
				{ "n", "[d", vim.diagnostic.goto_prev, "Go to previous diagnostic" },
				{ "n", "]d", vim.diagnostic.goto_next, "Go to next diagnostic" },
				{ "n", "<leader>rs", ":LspRestart<CR>", "Restart LSP" },
			}

			for _, map in ipairs(mappings) do
				opts.desc = map[4]
				keymap.set(map[1], map[2], map[3], opts)
			end
		end

		-- Default capabilities with autocompletion
		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- Diagnostic signs configuration
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		-- Language servers configuration
		local servers = {
			"html",
			"tsserver",
			"cssls",
			"tailwindcss",
			"prismals",
			"graphql",
			"emmet_ls",
			"pyright",
			"lua_ls",
		}

		for _, server in ipairs(servers) do
			lspconfig[server].setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})
		end

		-- Special configuration for Svelte server
		lspconfig["svelte"].setup({
			capabilities = capabilities,
			on_attach = function(client, bufnr)
				on_attach(client, bufnr)
				vim.api.nvim_create_autocmd("BufWritePost", {
					pattern = { "*.js", "*.ts" },
					callback = function(ctx)
						if client.name == "svelte" then
							client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.file })
						end
					end,
				})
			end,
		})

		-- Lua language server configuration with special settings
		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})
	end,
}
