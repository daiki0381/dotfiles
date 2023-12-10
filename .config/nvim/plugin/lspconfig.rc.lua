local status, lspconfig = pcall(require, "lspconfig")
if (not status) then return end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function (server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities
    }
  end
}
