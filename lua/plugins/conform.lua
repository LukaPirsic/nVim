return {
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = false,
		format_on_save = {
			timeout_ms = 1000,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			lua = { "stylua" },

			python = { "ruff_fix", "ruff_format" },

			yaml = { "prettier" },
			["yaml.ansible"] = { "prettier" },

			groovy = { "npm-groovy-lint" },
		},
	},
}
