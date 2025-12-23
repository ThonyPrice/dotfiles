-- Linter configurations
return {
  "mfussenegger/nvim-lint",
  config = function(_, opts)
    local lint = require("lint")
    -- Apply LazyVim's default config first
    for name, linter in pairs(opts.linters or {}) do
      lint.linters[name] = vim.tbl_deep_extend("force", lint.linters[name] or {}, linter)
    end
    lint.linters_by_ft = opts.linters_by_ft or {}

    -- Disable MD013 (line length) for markdownlint
    lint.linters.markdownlint.args = {
      "--disable", "MD013", "--"
    }
  end,
}
