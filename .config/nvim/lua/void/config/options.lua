local g = vim.g
local o = vim.o

local M = {}

function M.loadGlobals()
  g.mapleader = " "
  g.maplocalleader = " "
end

function M.loadOptions()
  -- Format
  o.shiftwidth = 2
  o.smartindent = true

  -- Only match correct lower/upper case
  o.smartcase = true
  o.ignorecase = true

  -- Always use clipboard
  o.clipboard = "unnamedplus"

  -- Mouse and cursor
  o.mouse = "a"
  o.cursorline = true
  o.guicursor = ""

  -- Sidebar --
  o.signcolumn = "no"
  o.number = true
  o.relativenumber = true

  o.termguicolors = true
end

return M
