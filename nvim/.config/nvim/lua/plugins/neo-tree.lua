-- Neo-tree customizations
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["<Tab>"] = "toggle_node",
        },
      },
    },
  },
}
