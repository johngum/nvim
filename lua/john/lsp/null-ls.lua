local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local utils = require("null-ls.utils")
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
    root_dir = utils.root_pattern("composer.json", "package.json", "Makefile", ".git"),
    diagnostics_format = "#{m} (#{c}) [#{s}]",
	sources = {
        null_ls.builtins.completion.spell,
        diagnostics.phpcs,
		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
        formatting.phpcbf,
	},
})

