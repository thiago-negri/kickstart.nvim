return {
  {
    'NStefan002/screenkey.nvim',
    lazy = false,
    version = '*', -- or branch = "dev", to use the latest commit
    opts = {
      win_opts = {
        --
        -- With cam:
        -- row = vim.o.lines - vim.o.cmdheight - 14,
        --
        -- Without cam:
        row = vim.o.lines - vim.o.cmdheight,
        --
        --
        col = vim.o.columns,
        relative = 'editor',
        anchor = 'SE',
        width = 38,
        height = 1,
        border = 'none',
        title = 'Screenkey',
        title_pos = 'center',
        style = 'minimal',
        focusable = false,
        noautocmd = true,
      },
      compress_after = 3,
      clear_after = 3,
      disable = {
        filetypes = {},
        buftypes = {},
        events = false,
      },
      show_leader = true,
      group_mappings = false,
      display_infront = {},
      display_behind = {},
      filter = function(keys)
        return keys
      end,
      keys = {
        ['<TAB>'] = '󰌒',
        ['<CR>'] = '󰌑',
        ['<ESC>'] = 'Esc',
        ['<SPACE>'] = '␣',
        ['<BS>'] = '󰌥',
        ['<DEL>'] = 'Del',
        ['<LEFT>'] = '',
        ['<RIGHT>'] = '',
        ['<UP>'] = '',
        ['<DOWN>'] = '',
        ['<HOME>'] = 'Home',
        ['<END>'] = 'End',
        ['<PAGEUP>'] = 'PgUp',
        ['<PAGEDOWN>'] = 'PgDn',
        ['<INSERT>'] = 'Ins',
        ['<F1>'] = '󱊫',
        ['<F2>'] = '󱊬',
        ['<F3>'] = '󱊭',
        ['<F4>'] = '󱊮',
        ['<F5>'] = '󱊯',
        ['<F6>'] = '󱊰',
        ['<F7>'] = '󱊱',
        ['<F8>'] = '󱊲',
        ['<F9>'] = '󱊳',
        ['<F10>'] = '󱊴',
        ['<F11>'] = '󱊵',
        ['<F12>'] = '󱊶',
        ['CTRL'] = 'Ctrl',
        ['ALT'] = 'Alt',
        ['SUPER'] = '󰘳',
        ['<leader>'] = '<leader>',
      },
    },
  },
}
