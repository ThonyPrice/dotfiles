-- Configure Snacks project picker
-- Add your project directories to `dev` to have them discovered
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        projects = {
          -- Directories containing multiple projects (scans subdirs for .git etc.)
          dev = {
            "~/git",
            "~/dev",
            "~/projects",
            "~/.doom.d",
            -- Add more directories here as needed
          },
          -- Also include projects from recent files
          recent = true,
          -- How deep to scan in dev directories
          max_depth = 2,
          -- Patterns that identify a project root
          patterns = { ".git", "package.json", "Makefile", "Cargo.toml", "go.mod" },
        },
      },
    },
  },
}
