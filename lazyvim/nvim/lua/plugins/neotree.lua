return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>fs",
      function()
        require("neo-tree.command").execute({ reveal = true })
      end,
      desc = "Reveal file in Neotree",
    },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
  },
}
