--Remap space as leader key
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- Line Numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- ClipBoard
vim.cmd("set clipboard+=unnamedplus")

-- Source all config files
require('plugins')
require('lsp')
require('cmpConfig')
require('luaLineConfig')
require('treeSitterConfig')
require('materialThemeConfig')
require('telescopeConfig')


-- Commenter Plugin setup
require('Comment').setup()
