require('telescope').setup{}
-- vim.cmd("nnoremap <Leader>. <cmd>Telescope find_files<cr>")
vim.keymap.set({ 'n', 'v' }, '<Leader>.', '<cmd>Telescope find_files<cr>')
vim.keymap.set({ 'n', 'v' }, '<Leader>fm', '<cmd>Telescope live_grep<cr>')
