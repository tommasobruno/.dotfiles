return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    theme = "auto",
    icons_enabled = true,
    componentSeparators = {
      left = "|",
      right = "|",
    },
    sectionSeparators = {
      left = "",
      right = "",
    },
  },
}
