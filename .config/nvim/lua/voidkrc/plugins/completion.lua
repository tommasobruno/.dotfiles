return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip",
    "L3MON4D3/LuaSnip",
  },
  opts = function()
    local cmp = require("cmp")
    local ls = require("luasnip")

    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    return {
      sources = {
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
      },

      mapping = {
        ["<c-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<c-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<cr>"] = cmp.mapping.confirm({ select = true }),
      },

      snippet = {
        expand = function(args)
          ls.lsp_expand(args.body)
        end,
      },
    }
  end,
}
