-- Diagnostic keymaps
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
-- vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
-- vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
-- vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- buffers
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
-- vim.keymap.set("n", "<leader>bd", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- indentation:
-- some terminal map Ctrl-i to Tab and therefore using Tab for indentation clashes with vim's jumplist (<C-i>)
-- vim.keymap.set("n", "<Tab>", ">0", { desc = "indent" })
-- vim.keymap.set("n", "<S-Tab>", "<0", { desc = "de-indent" })
-- vim.keymap.set("v", "<Tab>", ">0gv", { desc = "indent" })
-- vim.keymap.set("v", "<S-Tab>", "<0gv", { desc = "de-indent" })
vim.keymap.set("n", ">", ">0", { desc = "indent" })
vim.keymap.set("n", "<", "<0", { desc = "de-indent" })
vim.keymap.set("v", ">", ">0gv", { desc = "indent" })
vim.keymap.set("v", "<", "<0gv", { desc = "de-indent" })

-- harpoon keymaps:
local harpoon = require('harpoon')
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "add to harpoon" })
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)


-- vim: ts=2 sts=2 sw=2 et
