-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
-- ============================================================================
-- KEYMAP ORGANIZATION GUIDELINES
-- ============================================================================
-- 1. Group keymaps by category (buffers, windows, search, etc.)
-- 2. Always include `desc` for which-key integration
-- 3. Use `vim.keymap.set()` (modern API) not `vim.api.nvim_set_keymap()`
-- 4. To override LazyVim defaults, use `vim.keymap.del()` first if needed
-- 5. Keep Doom Emacs muscle memory where sensible (SPC-based mnemonics)
-- ============================================================================

local map = vim.keymap.set

-- ============================================================================
-- WHICH-KEY GROUP NAMES
-- ============================================================================

require("which-key").add({
  { "<leader>o", group = "Org", icon = "󰈙 " },
  { "<leader>p", group = "Projects", icon = "󰏓 " },
})

-- ============================================================================
-- OPEN (SPC o)
-- ============================================================================

-- Terminal toggle (Doom: SPC o t)
map("n", "<leader>ot", function() Snacks.terminal() end, { desc = "Toggle terminal" })

-- ============================================================================
-- COMMANDS
-- ============================================================================

-- Command palette (Doom: SPC :)
map("n", "<leader>:", function() Snacks.picker.commands() end, { desc = "Commands" })

-- Command history (moved from SPC :)
map("n", "<leader>;", function() Snacks.picker.command_history() end, { desc = "Command history" })

-- ============================================================================
-- BUFFERS (SPC b)
-- ============================================================================
-- Doom Emacs style: SPC b b opens buffer list/explorer

-- Override LazyVim default: SPC b b now opens buffer picker (was: switch to other)
map("n", "<leader>bb", function() Snacks.picker.buffers() end, { desc = "Buffers" })

-- Move "switch to other buffer" to SPC b o (other) - preserves the functionality
map("n", "<leader>bo", "<cmd>e #<cr>", { desc = "Switch to other buffer" })

-- Close buffer (Doom muscle memory - same as SPC b d)
map("n", "<leader>bc", function() Snacks.bufdelete() end, { desc = "Close buffer" })

-- Next/previous buffer navigation
map("n", "<leader>bn", "<cmd>BufferLineCycleNext<cr>", { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous buffer" })

-- Move toggle pin to SPC b P (was SPC b p)
map("n", "<leader>bP", "<cmd>BufferLineTogglePin<cr>", { desc = "Toggle pin" })

-- Reload buffer (Doom: SPC b r)
map("n", "<leader>br", "<cmd>e<cr>", { desc = "Reload buffer" })

-- Move delete left/right buffers to capitalized versions
map("n", "<leader>bL", "<cmd>BufferLineCloseLeft<cr>", { desc = "Delete buffers to the left" })
map("n", "<leader>bR", "<cmd>BufferLineCloseRight<cr>", { desc = "Delete buffers to the right" })

-- ============================================================================
-- WINDOWS (SPC w)
-- ============================================================================

-- Close window (Doom muscle memory - same as SPC w d)
map("n", "<leader>wc", "<C-w>c", { desc = "Close window", remap = true })

-- ============================================================================
-- PROJECTS (SPC p)
-- ============================================================================

-- Switch project (Doom: SPC p p)
map("n", "<leader>pp", function() Snacks.picker.projects() end, { desc = "Switch project" })

-- Find file in project (Doom: SPC p f) - same as SPC f f but explicit
map("n", "<leader>pf", function() Snacks.picker.files() end, { desc = "Find file in project" })

-- Search/grep in project (Doom: SPC p s)
map("n", "<leader>ps", function() Snacks.picker.grep() end, { desc = "Search in project" })

-- ============================================================================
-- FILES (SPC f)
-- ============================================================================

-- Save file (Doom: SPC f s)
map("n", "<leader>fs", "<cmd>w<cr>", { desc = "Save file" })
