return {
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup({
			-- /etc/hosts is opened as filetype=conf and uses # comments.
			pre_hook = function()
				if vim.bo.filetype == "conf" then
					return "#%s"
				end
			end,
		})

		vim.keymap.set("n", "<leader>gc", function()
			require("Comment.api").toggle.linewise.current()
		end, { desc = "Toggle comment current line" })

		vim.keymap.set("x", "<leader>gc", function()
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "nx", false)
			require("Comment.api").toggle.linewise(vim.fn.visualmode())
		end, { desc = "Toggle comment selection" })
	end,
}
