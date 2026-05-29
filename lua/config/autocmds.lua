local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight yanked text.
autocmd("TextYankPost", {
	desc = "Highlight when yanking",
	group = augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Treat /etc/hosts as a hash-commented config file.
-- There is no Tree-sitter parser for hosts, so use conf filetype/syntax fallback.
autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "/etc/hosts", "*/hosts" },
	callback = function()
		vim.bo.filetype = "conf"
		vim.bo.syntax = "conf"
		vim.bo.commentstring = "# %s"
	end,
})

-- Ansible YAML detection.
vim.filetype.add({
	extension = {
		yml = "yaml.ansible",
		yaml = "yaml.ansible",
	},
})
