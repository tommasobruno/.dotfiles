return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = {
      "vimdoc",
      "javascript",
      "typescript",
      "c",
      "lua",
      "zig",
      "git_config",
      "bash",
    },

    sync_install = false,
    auto_install = false,

    indent = {
      enable = true,
    },

    highlight = {
      enable = true,
      dditional_vim_regex_highlighting = { "markdown" },
    },
  },
}
