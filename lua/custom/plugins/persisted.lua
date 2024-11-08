return {
  -- Lua
  {
    'olimorris/persisted.nvim',
    lazy = false,
    config = function()
      require('persisted').setup()
    end,
  },
}
