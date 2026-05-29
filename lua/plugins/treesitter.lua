return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	main = "nvim-treesitter.config",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "bash", "c", "html", "lua", "markdown", "vim", "vimdoc", "yaml", "groovy", "vue" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
