return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",

    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<M-l>",
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
          jump_prev = "[[",
          jump_next = "]]",
          accept = "<CR>",
          refresh = "gr",
          open = "<M-CR>",
        },
        layout = {
          position = "bottom",
          ratio = 0.4,
        },
      },
      filetypes = {
        markdown = true,
        help = false,
        ["*"] = true,
      },
    },
    keys = {
      {
        "<leader>ac",
        function()
          if require("copilot.client").is_disabled() then
            vim.cmd("Copilot enable")
            print("🤖 Copilot (Texto Fantasma) ACTIVADO")
          else
            vim.cmd("Copilot disable")
            print("🤖 Copilot (Texto Fantasma) DESACTIVADO")
          end
        end,
        desc = "Toggle Ghost Text",
      },
    },
  },
}
