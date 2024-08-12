vim.g.mapleader = " "
--Neotree
vim.keymap.set('n', '<C-e>', ':Neotree left<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree git_status<CR>')
--Bufferline
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')

--Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
--Comment
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')
vim.keymap.set("v", '<leader>/', ":CommentToggle<CR>")
--Search
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader> pf', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
--Markdown preview
vim.keymap.set('n', '<leader>m', ':MarkdownPreviewToggle')

-- Terminal
-- vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
-- vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
-- vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')
