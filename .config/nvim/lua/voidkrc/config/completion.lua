local cmp = require("cmp")
local ls = require("luasnip")

local M = {}

local function load_cmp_config()
  local cmp_select = { behavior = cmp.SelectBehavior.Select }

  cmp.setup({
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
  })
end

local function load_luasnip_config()
  ls.config.set_config({
    history = true,
    updateevents = "TextChanged,TextChangedI",
    override_builtin = true,
  })

  vim.keymap.set({ "i", "s" }, "<C-k>", function()
    if ls.expand_or_jumpable() then
      print("Expanding or jumping")
      ls.expand_or_jump()
    else
      print("Not expand or jumpable")
    end
  end, { silent = true, noremap = true })

  vim.keymap.set({ "i", "s" }, "<C-j>", function()
    if ls.jumpable(-1) then
      ls.jump(-1)
    end
  end, { silent = true, noremap = true })
end

M.config = function()
  load_cmp_config()
  load_luasnip_config()
end

return M
