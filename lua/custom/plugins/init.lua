-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.opt.tabstop = 8
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.guicursor = 'a:block-nCursor'
vim.opt.laststatus = 0

-- Force use '/' as path separator, because we're running vim inside msys
vim.opt.shellslash = true

local map = vim.keymap.set

-- Notes file
-- map('n', '<leader>N', '<CMD>:e ~/notes.md<CR>', { desc = 'Open [N]otes' })

-- Buffers navigation
-- map('n', '<tab>', '<CMD>:bn<CR>', { desc = 'Next Buffer' })
-- map('n', '<S-tab>', '<CMD>:bp<CR>', { desc = 'Previous Buffer' })
-- map('n', '<leader>kb', '<CMD>:bdel<CR>', { desc = 'Kill [B]uffer' })

-- Sort paragraph
map('n', '<leader>Sip', 'vip:sort i<CR>', { desc = '[S]ort [I]nside [P]aragraph' })

-- Tabs
map('n', '<leader><tab>', '<CMD>tabn<CR>', { desc = 'Next [Tab]' })
map('n', '<leader><S-tab>', '<CMD>tabp<CR>', { desc = 'Previous [Tab]' })
map('n', '<leader>o<tab>', '<CMD>tabnew<CR>', { desc = 'Open New [Tab]' })
map('n', '<leader>k<tab>', '<CMD>tabclose<CR>', { desc = 'Kill [Tab]' })

-- Quickfix navigation
map('n', '<A-,>', '<CMD>:cp<CR>', { desc = 'Previous Quickfix' })
map('n', '<A-.>', '<CMD>:cn<CR>', { desc = 'Next Quickfix' })
map('n', '<A-/>', '<CMD>:ccl<CR>', { desc = 'Close Quickfix' })
map('n', '<A-?>', '<CMD>:cope<CR>', { desc = 'Open Quickfix' })

-- Center screen on C-d and C-u
map('n', '<C-d>', '<C-d>zt')
map('n', '<C-u>', '<C-u>zb')
map('n', 'G', 'Gzb')
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')
map('n', '*', '*zz')
map('n', '#', '#zz')
map('n', 'g*', 'g*zz')
map('n', 'g#', 'g#zz')

-- Duplicate a line and comment out the first line
map("n", "yc", "yy<CMD>normal gcc<CR>p")

-- Home/End as H and L
map("n", "H", "^")
map("n", "L", "$")
map("v", "H", "^")
map("v", "L", "$")

-- Copy current file path to system's clipboard (bc = buffer copy)
map("n", "<leader>bc", "<cmd>let @*=@%<cr><cmd>echo 'Copied file path: ' . @%<cr>")

-- Show TS highlight info under cursor
map('n', '<F4>', '<cmd>Inspect<cr>')

-- Git Commit overrides
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = {
    "*.git/COMMIT_EDITMSG",
  },
  command = "set cc=50,72",
})

return {}
