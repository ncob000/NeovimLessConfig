require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black" },
		javascript = { "prettier" },
		c = { "astyle" },
		cpp = { "astyle" },
		json = { "fixjson" },
		bash = { "beautysh" },
		kotlin = { "ktlint" },
		html = { "htmlbeautifier" },
		css = { "prettier" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
