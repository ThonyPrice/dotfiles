-- Org-mode for Neovim
return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  opts = {
    org_agenda_files = "~/git/org/**/*",
    org_default_notes_file = "~/git/org/refile.org",
    -- Familiar Doom-style mappings are mostly default:
    -- <leader>oa - Agenda
    -- <leader>oc - Capture
    -- <leader>ot - Toggle TODO state
  },
}
