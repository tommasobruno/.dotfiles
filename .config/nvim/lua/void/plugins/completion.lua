return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	build = "make install_jsregexp"
    }
  },
  config = function()
    local l = require("luasnip")
    local cmp = require("cmp")

    local cmp_select = { behavior = cmp.SelectBehavior.Select }

    cmp.setup({
      sources = {
	 { name = "nvim_lsp" },
	 { name = "nvim_lua" },
	 { name = "path" },
	 { name = "buffer" }
      },

      mapping = cmp.mapping.preset.insert({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
      }),

      snippet = {
	expand = function(args)
	  l.lsp_expand(args.body)
	end
      },

      window = {
	completion = {
	  scrollbar = false,
	  sidePadding = 1
	},
      },
    })
  end
}
