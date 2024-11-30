return {
  {
    'shortcuts/no-neck-pain.nvim',
    version = '*',

    ---@type NoNeckPain.options
    opts = {
      width = 130,
      autocmds = {
        enableOnVimEnter = true,
        skipEnteringNoNeckPainBuffer = true,
      },
    },

    init = function()
      vim.keymap.set('n', '<leader>np', '<CMD>NoNeckPain<CR>', {
        desc = 'No Neck [P]ain',
      })

      vim.keymap.set('n', '<leader>n=', '<CMD>NoNeckPainWidthUp<CR>', {
        desc = 'No Neck Pain Width Up [=]',
      })

      vim.keymap.set('n', '<leader>n-', '<CMD>NoNeckPainWidthDown<CR>', {
        desc = 'No Neck Pain Width Down [-]',
      })
    end,
  },
}
