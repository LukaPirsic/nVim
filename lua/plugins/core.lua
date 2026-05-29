return {
	"tpope/vim-sleuth",
	"tpope/vim-fugitive",
	"erikzaadi/vim-ansible-yaml",
	{ "yaegassy/coc-ansible", build = "yarn install --frozen-lockfile" },
	"LunarVim/bigfile.nvim",
	{
		"christoomey/vim-tmux-navigator",
		keys = {
			{ "<C-h>", "<cmd>TmuxNavigateLeft<CR>", desc = "Navigate left tmux pane/window" },
			{ "<C-j>", "<cmd>TmuxNavigateDown<CR>", desc = "Navigate down tmux pane/window" },
			{ "<C-k>", "<cmd>TmuxNavigateUp<CR>", desc = "Navigate up tmux pane/window" },
			{ "<C-l>", "<cmd>TmuxNavigateRight<CR>", desc = "Navigate right tmux pane/window" },
		},
	},
}
