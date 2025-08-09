return {
  'smoka7/hop.nvim',
  version = '*',
  opts = {
    keys = 'etovxqpdygfblzhckisuran',
  },
  init = function()
    vim.keymap.set('', '<c-j>', '<cmd>HopWord<cr>')
  end,
}
