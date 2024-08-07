return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install_jsregexp",

  keys = function()
    local ls = require("luasnip")
    return {
      {
        "<C-k>",
        function()
          if ls.expand_or_jumpable() then
            ls.expand_or_jump()
          end
        end,
        mode = { "i", "s" },
        silent = true,
        noremap = true,
      },
      {
        "<C-j>",
        function()
          if ls.jumpable(-1) then
            ls.jump(-1)
          end
        end,
        mode = { "i", "s" },
        silent = true,
        noremap = true,
      },
    }
  end,

  main = "luasnip.config",
  opts = function()
    for _, ft_path in ipairs(vim.api.nvim_get_runtime_file("lua/voidkrc/snippets/*.lua", true)) do
      loadfile(ft_path)()
    end

    return {
      history = true,
      updateevents = "TextChanged,TextChangedI",
      override_builtin = true,
    }
  end,
}
