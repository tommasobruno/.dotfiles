local g = vim.g
local o = vim.opt

-- Globals
g.mapleader = " "
g.maplocalleader = " "

-- Format
o.inccommand = "split"
o.smartindent = true
o.completeopt = "menu,menuone,noselect,preview"
o.hlsearch = false
o.incsearch = true
o.splitbelow = true
o.splitright = true
o.shiftwidth = 2

-- Only match correct lower/upper case
o.smartcase = true
o.ignorecase = true

-- Always use clipboard
o.clipboard = "unnamedplus"
o.formatoptions:remove("o")

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
