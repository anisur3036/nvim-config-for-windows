return {
  "terrortylor/nvim-comment",
  config = function()
    require("nvim_comment").setup({create_mappings = false})
  end,

  vim.keymap.set({"n", "v"}, "<leader>/", ":CommentToggle<cr>")
}
