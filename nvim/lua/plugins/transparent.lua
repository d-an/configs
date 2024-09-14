-- Highlight todo, notes, etc in comments
return {
	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").clear_prefix("BufferLine")
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
