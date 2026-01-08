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

    -- UI customization (disabled - using render-markdown.nvim instead)
    ui = {
      enable = false,
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
    {
      "<leader>ow",
      function()
        local months = { "January", "February", "March", "April", "May", "June",
          "July", "August", "September", "October", "November", "December" }

        local year = os.date("%Y")
        local week = os.date("%W")
        local note_name = string.format("%s-W%s", year, week)

        -- Calculate Monday of current week
        local now = os.time()
        local day_of_week = tonumber(os.date("%w", now))
        local days_since_monday = (day_of_week == 0) and 6 or (day_of_week - 1)
        local monday = now - (days_since_monday * 86400)
        local sunday = monday + (6 * 86400)

        local monday_fmt = months[tonumber(os.date("%m", monday))] .. " " .. tonumber(os.date("%d", monday))
        local sunday_fmt = months[tonumber(os.date("%m", sunday))] .. " " .. tonumber(os.date("%d", sunday)) .. ", " .. os.date("%Y", sunday)
        local week_fmt = os.date("%Y", monday) .. "-W" .. os.date("%W", monday)

        local vault_path = vim.fn.expand("~/git/org/vault")
        local note_path = vault_path .. "/logs/" .. note_name .. ".md"
        local template_path = vault_path .. "/templates/weekly.md"

        local is_new = vim.fn.filereadable(note_path) ~= 1
        vim.cmd("edit " .. note_path)

        if is_new and vim.fn.filereadable(template_path) == 1 then
          vim.schedule(function()
            vim.bo.modifiable = true
            local template = table.concat(vim.fn.readfile(template_path), "\n")
            -- Replace Templater syntax with calculated values
            template = template:gsub('<%% tp%.date%.now%("YYYY%-%[W%]WW"%) %%>', week_fmt)
            template = template:gsub('<%% tp%.date%.now%("MMMM D".-%) %%>', monday_fmt, 1)
            template = template:gsub('<%% tp%.date%.now%("MMMM D, YYYY".-%) %%>', sunday_fmt)
            local lines = vim.split(template, "\n")
            vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
          end)
        end
      end,
      desc = "Weekly note",
    },
  },
}
