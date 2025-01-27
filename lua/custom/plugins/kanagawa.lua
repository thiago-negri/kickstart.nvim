return {
  {
    'rebelot/kanagawa.nvim',
    opts = {
      -- transparent = true,
      theme = 'dragon',
      background = {
        dark = 'dragon',
        light = 'lotus',
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = 'none',
            },
          },
        },
      },
      statementStyle = { bold = false },
      commentStyle = { italic = false },
      keywordStyle = { italic = false },
      overrides = function(colors)
        local theme = colors.theme
        return {
          TelescopeTitle = { fg = theme.ui.special, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
          ['@variable.builtin'] = { italic = false },
        }
      end,
    },
    init = function()
      -- vim.cmd.colorscheme 'kanagawa'
    end,
  },
}
