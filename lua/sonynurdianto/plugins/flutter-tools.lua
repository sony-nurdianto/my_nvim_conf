return {
	"mfussenegger/nvim-dap",
	"akinsho/flutter-tools.nvim",
	"dart-lang/dart-vim-plugin",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim",
	},
	config = function()
		local flutterTools = require("flutter-tools")

		local dap = require("dap")

		flutterTools.setup({
			-- uncomment below lines for windows only
			-- flutter_path = "path/to/flutter/sdk/bin"

			debuger = {
				enabled = false,
				run_via_dap = false,
				register_configurations = function(_)
					dap.adapters.dart = {
						type = "executable",
						command = vim.fn.stdpath("data") .. "/mason/bin/dart-debug-adapter",
						args = { "flutter" },
					}

					dap.configurations.dart = {
						{
							type = "dart",
							request = "launch",
							name = "Launch flutter",
							dartSdkPath = "/snap/bin/dart",
							flutterSdkPath = "/snap/bin/flutter",
							program = "${workspaceFolder}/lib/main.dart",
							cwd = "${workspaceFolder}",
						},
					}
				end,
			},
			dev_log = {
				enabled = false,
				open_cmd = "tabedit",
			},
			lsp = {
				on_attach = require("lvim.lsp").common_on_attach,
				capabilities = require("lvim.lsp").deafault_capabilities,
			},
		})
	end,
}
