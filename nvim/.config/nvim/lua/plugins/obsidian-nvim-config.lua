-- obsidian.nvim configuration for lazy.nvim
-- Copy this to your Neovim plugin config

return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "brain",
        path = "~/git/org/vault",
      },
    },

    -- Daily notes configuration
    daily_notes = {
      folder = "logs",
      date_format = "%Y-%m-%d",
      template = "templates/daily.md",
    },

    -- Templates
    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },

    -- Note ID generation (for new notes)
    note_id_func = function(title)
      -- Use title as-is if provided, otherwise timestamp
      if title ~= nil then
        return title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        return tostring(os.time())
      end
    end,

    -- Where to put new notes
    new_notes_location = "notes",

    -- Completion (disabled - using blink.cmp instead of nvim-cmp)
    completion = {
      nvim_cmp = false,
      min_chars = 2,
    },

    -- Key mappings
    mappings = {
      -- Follow link under cursor
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle checkbox
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
    },

    -- UI customization
    ui = {
      enable = true,
      checkboxes = {
        [" "] = { char = "☐", hl_group = "ObsidianTodo" },
        ["x"] = { char = "✔", hl_group = "ObsidianDone" },
      },
    },

    -- Attachments
    attachments = {
      img_folder = "attachments",
    },
  },

  -- Key mappings outside of markdown files
  keys = {
    { "<leader>on", "<cmd>ObsidianNew<cr>", desc = "New note" },
    { "<leader>oo", "<cmd>ObsidianSearch<cr>", desc = "Search notes" },
    { "<leader>oq", "<cmd>ObsidianQuickSwitch<cr>", desc = "Quick switch" },
    { "<leader>ot", "<cmd>ObsidianToday<cr>", desc = "Today's note" },
    { "<leader>oy", "<cmd>ObsidianYesterday<cr>", desc = "Yesterday's note" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<cr>", desc = "Backlinks" },
    { "<leader>ol", "<cmd>ObsidianLink<cr>", desc = "Link selection" },
  },
}
