-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local map = vim.keymap.set

-- Notes file
map('n', '<leader>N', '<CMD>:e ~/notes.md<CR>', { desc = 'Open [N]otes' })

-- Buffers navigation
map('n', '<tab>', '<CMD>:bn<CR>', { desc = 'Next Buffer' })
map('n', '<S-tab>', '<CMD>:bp<CR>', { desc = 'Previous Buffer' })
map('n', '<leader>kb', '<CMD>:bdel<CR>', { desc = 'Kill [B]uffer' })

-- Tabs
map('n', '<leader><tab>', '<CMD>tabn<CR>', { desc = 'Next [Tab]' })
map('n', '<leader><S-tab>', '<CMD>tabp<CR>', { desc = 'Previous [Tab]' })
map('n', '<leader>o<tab>', '<CMD>tabnew<CR>', { desc = 'Open New [Tab]' })
map('n', '<leader>k<tab>', '<CMD>tabclose<CR>', { desc = 'Kill [Tab]' })

-- Quickfix navigation
map('n', '<A-[>', '<CMD>:cp<CR>', { desc = 'Previous Quickfix' })
map('n', '<A-]>', '<CMD>:cn<CR>', { desc = 'Next Quickfix' })
map('n', '<A-\\>', '<CMD>:ccl<CR>', { desc = 'Close Quickfix' })
map('n', '<A-|>', '<CMD>:cope<CR>', { desc = 'Open Quickfix' })

return {}
