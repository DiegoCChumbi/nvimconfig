return {
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {},
    },
    keys = {
      {
        "<c-_>",
        function()
          Snacks.terminal.toggle(nil, { cwd = LazyVim.root() })
        end,
        desc = "Toggle Terminal (Fedora)",
        mode = { "n", "t" },
      },
    },
  },
}
