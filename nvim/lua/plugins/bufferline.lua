-- Highlight todo, notes, etc in comments
return {
	"akinsho/bufferline.nvim",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup()
	end,
}
-- vim: ts=2 sts=2 sw=2 et
