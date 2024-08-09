return {
  dir = "~/git/nvim-plugins/colorkrc.nvim",
  name = "colorkrc",
  lazy = false,
  enabled = true,
  priority = 1000,
  config = function()
    require("colorkrc").colorscheme()
  end,
}
