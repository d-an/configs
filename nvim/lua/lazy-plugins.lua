require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	-- Use `opts = {}` to force a plugin to be loaded.
	require("plugins/gitsigns"),
	require("plugins/neogit"),
	require("plugins/which-key"),
	require("plugins/telescope"),
	require("plugins/lspconfig"),
	-- require("plugins/conform"),
	require("plugins/cmp"),
	require("plugins/tokyonight"),
	require("plugins/todo-comments"),
	require("plugins/mini"),
	require("plugins/treesitter"),
	require("plugins/transparent"),
	require("plugins/bufferline"),
	require("plugins/better-escape"),
	require("plugins/no-neck-pain"),
  require("plugins/lualine"),
}, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- vim: ts=2 sts=2 sw=2 et
