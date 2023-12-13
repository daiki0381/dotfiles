require("mason-null-ls").setup({
	ensure_installed = { "stylua", "prettier" },
	handlers = {},
})

local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.formatting.prettier.with({
			prefer_local = "node_modules/.bin",
		}),
	},
	debug = false,
})

vim.keymap.set("n", "ft", function()
	vim.lsp.buf.format({ async = true })
end)
