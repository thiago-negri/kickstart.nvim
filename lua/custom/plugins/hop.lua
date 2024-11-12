return {
  {
    'smoka7/hop.nvim',
    version = '*',
    init = function()
      local hop = require 'hop'

      hop.setup()

      vim.keymap.set('n', 's', '<CMD>:HopWord<CR>', { desc = 'Hop Word' })
    end,
  },
}
