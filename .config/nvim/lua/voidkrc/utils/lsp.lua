local cmp = require("cmp_nvim_lsp")

local M = {}

M.servers_configurations = {
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },
  tsserver = {},
  zls = {
    settings = {
      zls = {
        enable_inlay_hints = true,
        enable_snippets = true,
        warn_style = true,
      },
    },
  },
  clangd = {
    init_options = { clangdFileStatus = true },
    filetypes = { "c" },
  },
}

M.capabilities = function()
  return vim.tbl_deep_extend(
    "force",
    {},
    vim.lsp.protocol.make_client_capabilities(),
    cmp.default_capabilities()
  )
end

M.on_attach = function(_, buf)
  local map = vim.keymap.set
  local opts = { buffer = buf, noremap = true, silent = true }

  map("n", "gd", function()
    vim.lsp.buf.definition()
  end, opts)
  map("n", "K", function()
    vim.lsp.buf.hover()
  end, opts)
  map("n", "<leader>vws", function()
    vim.lsp.buf.workspace_symbol()
  end, opts)
  map("n", "<leader>vd", function()
    vim.diagnostic.open_float()
  end, opts)
  map("n", "<leader>vca", function()
    vim.lsp.buf.code_action()
  end, opts)
  map("n", "<leader>vrr", function()
    vim.lsp.buf.references()
  end, opts)
  map("n", "<leader>vrn", function()
    vim.lsp.buf.rename()
  end, opts)
  map("i", "<C-h>", function()
    vim.lsp.buf.signature_help()
  end, opts)
  map("n", "[d", function()
    vim.diagnostic.goto_next()
  end, opts)
  map("n", "]d", function()
    vim.diagnostic.goto_prev()
  end, opts)
end

return M
