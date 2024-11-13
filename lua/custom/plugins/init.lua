-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Tabs
vim.keymap.set('n', '<leader><tab>', '<CMD>tabn<CR>', { desc = 'Next [Tab]' })
vim.keymap.set('n', '<leader><S-tab>', '<CMD>tabp<CR>', { desc = 'Previous [Tab]' })
vim.keymap.set('n', '<leader><A-tab>', '<CMD>tabnew<CR>', { desc = 'New [Tab]' })

-- Quickfix navigation
vim.keymap.set('n', '<A-[>', '<CMD>:cp<CR>', { desc = 'Previous Quickfix' })
vim.keymap.set('n', '<A-]>', '<CMD>:cn<CR>', { desc = 'Next Quickfix' })
vim.keymap.set('n', '<A-\\>', '<CMD>:ccl<CR>', { desc = 'Close Quickfix' })
vim.keymap.set('n', '<A-|>', '<CMD>:cope<CR>', { desc = 'Open Quickfix' })

return {}
