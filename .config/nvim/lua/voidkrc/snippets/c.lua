local extras = require("luasnip.extras")
local ls = require("luasnip")

local s = ls.snippet
local i = ls.insert_node
local r = extras.rep

local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("c", {
  s(
    "cheader",
    fmt(
      [[
  #ifndef {}
  #define {}
  {}
  #endif
  ]],
      { i(1), r(1), i(0) }
    )
  ),
})
