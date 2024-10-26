return {
	"nvim-tree/nvim-tree.lua", version = "*", lazy = false,
	requires = {"nvim-tree/nvim-web-devicons",},
	config = function()
		require("nvim-tree").setup {}
	end,

	vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>", {silent=true, noremap=true})
}
