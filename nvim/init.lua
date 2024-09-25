--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.expandtab = true
vim.g.have_nerd_font = false
vim.g.expandtab = true

require("options")
require("keymaps")
require("lazy-bootstrap")
require("lazy-plugins")

-- vim: ts=2 sts=2 sw=2 et
