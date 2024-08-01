return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = { { "williamboman/mason.nvim", config = true } },
  opts = {
    ensure_installed = {
      -- Servers
      "lua-language-server",
      "zls",
      "typescript-language-server",
      "clangd",

      -- Formatters
      "prettierd",
      "stylua",
      "clang-format",
    },
  },
}
