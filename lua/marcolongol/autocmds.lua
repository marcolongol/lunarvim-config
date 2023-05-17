-- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
vim.api.nvim_create_autocmd("FileType", {
	pattern = "zsh",
	callback = function()
		-- let treesitter use bash highlight for zsh files as well
		require("nvim-treesitter.highlight").attach(0, "bash")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "Tiltfile",
	callback = function()
		-- let treesitter use python highlight for Tiltfiles as well
		require("nvim-treesitter.highlight").attach(0, "python")
	end,
})
