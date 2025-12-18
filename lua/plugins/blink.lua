return {
  {
    "saghen/blink.cmp",
    opts = {
      enabled = function()
        local disabled_ft = { "TelescopePrompt", "grug-far" }
        return not vim.tbl_contains(disabled_ft, vim.bo.filetype)
          and vim.b.completion ~= false
          and vim.bo.buftype ~= "prompt"
      end,

      completion = {
        menu = {
          border = {
            { "󱐋", "WarningMsg" },
            "─",
            "╮",
            "│",
            "╯",
            "─",
            "╰",
            "│",
          },
          winblend = 0,
          scrollbar = false,

          draw = {
            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon", "kind", gap = 1 },
            },
          },
        },

        documentation = {
          auto_show = true,
          window = {
            border = {
              { "", "DiagnosticHint" },
              "─",
              "╮",
              "│",
              "╯",
              "─",
              "╰",
              "│",
            },
            winblend = 0,
          },
        },
      },
    },
  },
}
