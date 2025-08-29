-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.opt.tabstop = 8
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.guicursor = 'a:block-nCursor'

-- Hide statusline
vim.opt.laststatus = 2

-- vim.opt.colorcolumn = '80'

-- Force use '/' as path separator, because we're running vim inside msys
if vim.loop.os_uname().sysname == 'Windows_NT' then
  vim.opt.shellslash = true
end

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
map('n', '<A-,>', '<CMD>cp<CR>zz', { desc = 'Previous Quickfix' })
map('n', '<A-.>', '<CMD>cn<CR>zz', { desc = 'Next Quickfix' })
map('n', '<A-/>', '<CMD>ccl<CR>', { desc = 'Close Quickfix' })
map('n', '<A-?>', '<CMD>cope<CR>', { desc = 'Open Quickfix' })

-- Center screen on C-d and C-u
-- map('n', '<C-d>', '<C-d>zt')
-- map('n', '<C-u>', '<C-u>zb')
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
map("n", "<leader>bc", "<cmd>let @*=@%<cr><cmd>echo 'Copied file path: ' . @%<cr>", { desc = '[C]opy file path' })

-- Show TS highlight info under cursor
map('n', '<F4>', '<cmd>Inspect<cr>')

-- F5 to compile
map('n', '<F5>', '<cmd>make<cr>')

-- Git Commit overrides
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = {
    "*.git/COMMIT_EDITMSG",
  },
  command = "set cc=50,72",
})

-- Create an augroup for TypeScript compilation settings
vim.api.nvim_create_augroup('tsc_comp', { clear = true })

-- !! Use .nvim.lua in project roon
--
-- -- Define an autocmd for TypeScript file types
-- vim.api.nvim_create_autocmd('FileType', {
--   group = 'tsc_comp',
--   pattern = { 'typescript' },
--   callback = function()
--     -- Set the compiler to tsc and the makeprg to npx tsc with desired options
--     vim.cmd('compiler tsc')
--     vim.opt_local.makeprg = 'npx tsc --noEmit --pretty false'
--   end,
-- })

-- Load project rc files, but secure
vim.o.exrc = true
vim.o.secure = true

return {}

