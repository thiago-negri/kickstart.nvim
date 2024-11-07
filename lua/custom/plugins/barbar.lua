return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    opts = {
      -- Show total number of tabs on top right
      tabpages = true,

      -- Focus on previous buffer when closing a tab
      focus_on_close = 'previous',

      -- Automatically shift when NeoTree is open
      sidebar_filetypes = {
        ['neo-tree'] = { event = 'BufWipeout' },
      },
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
    init = function()
      vim.g.barbar_auto_setup = false

      local map = vim.api.nvim_set_keymap

      -- Move to next tab, <Leader> [B]ar [N]ext
      map('n', '<Leader>bn', '<Cmd>BufferNext<CR>', { desc = '[B]ar [N]ext' })
      -- Move to previous tab, <Leader> [B]ar [P]revious
      map('n', '<Leader>bp', '<Cmd>BufferPrevious<CR>', { desc = '[B]ar [P]revious' })
      -- Close current tab, <Leader> [B]ar [Q]uit
      map('n', '<Leader>bq', '<Cmd>BufferClose<CR>', { desc = '[B]ar [Q]uit' })
      -- Pick tab, <Leader> [B]ar [B]ar
      map('n', '<Leader>bb', '<Cmd>BufferPick<CR>', { desc = '[B]ar [B]ar Pick' })
    end,
  },
}
