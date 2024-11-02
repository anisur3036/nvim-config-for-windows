return {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier,
          --  null_ls.builtins.formatting.blade_formatter,
          --  null_ls.builtins.formatting.rustywind,
          --  null_ls.builtins.diagnostics.phpstan,
          null_ls.builtins.formatting.pint,
        },
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
              group = augroup,
              buffer = bufnr,
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
              end,
            })
          end
        end,
      })

      vim.keymap.set("n", "<Leader>gf", vim.lsp.buf.format, {})
    end,
  }
}
