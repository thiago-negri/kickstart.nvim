return {
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        change_to_vcs_root = true,
        config = {
          week_header = { enabled = true },
          shortcut = {
            { desc = '󰊳 Update', group = '@property', key = 'u', action = 'Lazy update' },
            { desc = '󱒄 Last Session', group = '@property', key = 'S', action = 'SessionLoadLast' },
            { desc = '󰘁 Last Session Here', group = '@property', key = 's', action = 'SessionLoad' },
            { desc = ' Find Session', group = '@property', key = 'p', action = 'Telescope persisted' },
          },
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
