return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local user = vim.env.USER or vim.env.LOGNAME or "user"

      opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
        icons_enabled = true,

        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },

        disabled_filetypes = {
          statusline = {
            "neo-tree",
            "neo-tree-popup",
          },
          winbar = {
            "neo-tree",
            "neo-tree-popup",
          },
        },

        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      })

      opts.sections = vim.tbl_deep_extend("force", opts.sections or {}, {
        lualine_a = { {
          function()
            return " " .. user
          end,
        }, "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },

        lualine_x = { "fileformat", "filetype" },

        lualine_y = { "progress" },
        lualine_z = { "location" },
      })

      opts.inactive_sections = vim.tbl_deep_extend("force", opts.inactive_sections or {}, {
        lualine_a = { {
          function()
            return " " .. user
          end,
        }, "mode" },
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      })

      opts.tabline = {}
      opts.winbar = {}
      opts.inactive_winbar = {}
      opts.extensions = {}
    end,
  },
}
