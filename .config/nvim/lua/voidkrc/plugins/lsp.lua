return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local lspconfig = require("lspconfig")
    local lsp_utils = require("voidkrc.utils.lsp")

    for name, config in pairs(lsp_utils.servers_configurations) do
      local final_config = vim.tbl_deep_extend("force", {}, {
        capabilities = lsp_utils.capabilities,
        on_attach = lsp_utils.on_attach,
      }, config)

      lspconfig[name].setup(final_config)
    end
  end,
}
