return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      show_help = "yes",
      debug = false,
      disable_extra_info = "no",
      language = "Spanish",
    },

    keys = {
      { "<leader>a", "", desc = "+IA (Copilot)", mode = { "n", "v" } },

      {
        "<leader>aa",
        function()
          return require("CopilotChat").toggle()
        end,
        desc = "Abrir/Cerrar Chat",
        mode = { "n", "v" },
      },
      {
        "<leader>ax",
        function()
          return require("CopilotChat").reset()
        end,
        desc = "Limpiar Conversación",
        mode = { "n", "v" },
      },
      {
        "<leader>aq",
        function()
          local input = vim.fn.input("Pregunta rápida: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "Pregunta Rápida",
        mode = { "n", "v" },
      },
      { "<leader>ae", "<cmd>CopilotChatExplain<cr>", desc = "Explicar Código", mode = { "n", "v" } },
      { "<leader>at", "<cmd>CopilotChatTests<cr>", desc = "Generar Tests", mode = { "n", "v" } },
      { "<leader>af", "<cmd>CopilotChatFix<cr>", desc = "Arreglar Bug", mode = { "n", "v" } },
    },
  },
}
