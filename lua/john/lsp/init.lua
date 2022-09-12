local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")
local servers = {
    "dockerls",
    "html",
    "jsonls",
    "lemminx", -- XML
    -- "phpactor",
    "sumneko_lua",
    "tsserver",
    "yamlls"
}

lsp_installer.setup({
	ensure_installed = servers,
    automatic_installation = true
})

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("john.lsp.handlers").on_attach,
		capabilities = require("john.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "john.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end

require("john.lsp.null-ls")

