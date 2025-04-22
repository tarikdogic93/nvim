return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			-- Conform will run the first available formatter
			css = { "prettierd", "prettier", stop_after_first = true },
			go = { "gofumpt" },
			html = { "prettierd", "prettier", stop_after_first = true },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			vue = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
