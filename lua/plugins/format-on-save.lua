return {
  "elentok/format-on-save.nvim",
  config = function()
    local formatters = require("format-on-save.formatters")
    require('format-on-save').setup({
      exclude_path_patterns = {
        "/node_modules/",
        ".local/share/nvim/lazy",
      },
      formatter_by_ft = {
        css = formatters.lsp,
        html = formatters.lsp,
        php = formatters.lsp,
        json = formatters.lsp,
        lua = formatters.lsp,
        javascript = formatters.lsp,
        yaml = formatters.lsp,
        vue = formatters.prettierd,

      },
      run_with_sh = false,
    })
  end
}
