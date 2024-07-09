return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "😃",
					package_pending = "😯",
					package_uninstalled = "🙁",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"bashls",
				"clangd",
				"dockerls",
				"docker_compose_language_service",
				"jsonls",
				"rust_analyzer",
				"tailwindcss",
				"gopls",
				"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"gci",
				"golangci-lint",
				"gotests",
				"goimports-reviser",
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"eslint_d",
				"dart-debug-adapter",
			},
		})
	end,
}
