return {
  {
    'stevearc/oil.nvim',
    opts = {
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
      columns = {
        'permissions',
        'mtime',
        'size',
      },
    },
    -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
    init = function()
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
}
