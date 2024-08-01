return {
  "L3MON4D3/LuaSnip",
  version = "v2.3.0",
  build = "make install_jsregexp",

  config = function(_)
    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node

    ls.add_snippets("c", { s("testc", { t("Hello World") }) })

    -- Luasnip configuration
    ls.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
      override_builtin = true,
    })

    vim.keymap.set({ "i", "s" }, "<C-k>", function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end, { silent = true })

    vim.keymap.set({ "i", "s" }, "<C-j>", function()
      if ls.jumpable(-1) then
        ls.jump(-1)
      end
    end, { silent = true })
  end,
}
