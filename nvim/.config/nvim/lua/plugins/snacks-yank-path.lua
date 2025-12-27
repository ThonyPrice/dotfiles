-- Yank file path from snacks picker with <C-y> or Y
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      actions = {
        yank_path = function(picker, item)
          if not item then
            return
          end
          -- snacks picker items use 'file' for the path
          local path = item.file or item.text
          if not path then
            vim.notify("No path to yank", vim.log.levels.WARN)
            return
          end
          -- Copy to registers based on clipboard settings
          local cb_opts = vim.opt.clipboard:get()
          if vim.tbl_contains(cb_opts, "unnamed") then
            vim.fn.setreg("*", path)
          end
          if vim.tbl_contains(cb_opts, "unnamedplus") then
            vim.fn.setreg("+", path)
          end
          vim.fn.setreg("", path)
          vim.notify("Yanked: " .. path, vim.log.levels.INFO)
        end,
      },
      win = {
        input = {
          keys = {
            ["<C-y>"] = { "yank_path", mode = { "i", "n" }, desc = "Yank file path" },
            ["Y"] = { "yank_path", mode = { "n" }, desc = "Yank file path" },
          },
        },
      },
    },
  },
}
