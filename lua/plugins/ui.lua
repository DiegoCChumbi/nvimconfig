return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      local function lsp_active()
        local clients = vim.lsp.get_clients({ buf = 0 })
        if #clients == 0 then
          return ""
        end

        local names = {}
        for _, client in ipairs(clients) do
          table.insert(names, client.name)
        end

        return "  " .. table.concat(names, ", ")
      end

      table.insert(opts.sections.lualine_x, 2, {
        lsp_active,
        icon = "",
        color = { fg = "#89b4fa", gui = "bold" },
      })
    end,
  },
}
