return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  init = function()
    vim.cmd("colorscheme rose-pine")
  end,
  opts = {
    variant = "dark",
    dark_variant = "main",
    extend_background_behind_borders = false,
    enable = {
      terminal = true,
    },
    styles = {
      transparency = true,
    },
  },
}
