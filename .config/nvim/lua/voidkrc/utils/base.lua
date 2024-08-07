local g = vim.g
local o = vim.opt

-- Globals
g.mapleader = " "
g.maplocalleader = " "

-- Format
o.shiftwidth = 2
o.smartindent = true
o.completeopt = "menu,menuone,noselect,preview"
o.hlsearch = false
o.incsearch = true

-- Only match correct lower/upper case
o.smartcase = true
o.ignorecase = true

-- Always use clipboard
o.clipboard = "unnamedplus"

-- Mouse and cursor
o.mouse = "a"
o.cursorline = true
o.guicursor = ""

-- Sidebar
o.signcolumn = "no"
o.number = true
o.relativenumber = true

-- Rest
o.updatetime = 50
