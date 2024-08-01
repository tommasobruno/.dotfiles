return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>p",
      "<cmd>Telescope find_files<cr>",
      mode = { "n" },
    },
    {
      "<leader>gp",
      "<cmd>Telescope git_files<cr>",
      mode = { "n" },
    },
  },
  opts = {
    pickers = {
      find_files = {
        hidden = true,
      },
    },
  },
}
