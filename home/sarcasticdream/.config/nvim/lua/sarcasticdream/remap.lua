vim.g.mapleader = " "
vim.keymap.set("n", "<leader>zx", vim.cmd.Ex)

-- Mega based netrw file manager
vim.keymap.set("n", "<leader>xz", vim.cmd.Rex)

-- Commenting blocks of code
vim.cmd([[
  augroup commenting_blocks_of_code
    autocmd!
    autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
    autocmd FileType sh,ruby,python,*   let b:comment_leader = '# '
    autocmd FileType lua              let b:comment_leader = '-- '
    autocmd FileType conf,fstab       let b:comment_leader = '# '
    autocmd FileType tex              let b:comment_leader = '% '
    autocmd FileType mail             let b:comment_leader = '> '
    autocmd FileType vim              let b:comment_leader = '" '
  augroup END
  noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\\/')<CR>/<CR>:nohlsearch<CR>
  noremap <silent> ,cu :<C-B>silent <C-E>s/^<C-R>=escape(b:comment_leader,'\\/')<CR>//e<CR>:nohlsearch<CR>
]])

-- Replace all shiz
vim.api.nvim_set_keymap('n', 'S', ':%s//g<Left><Left>', { noremap = true })

-- splitting
vim.api.nvim_set_keymap('n', '<C-o>', '<C-w>s', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-p>', '<C-w>v', { noremap = true })

-- Closing windows
vim.api.nvim_set_keymap('n', '<C-q>', '<C-w>c', { noremap = true })

-- Move to the next/previous tab with Alt-1/Alt-2
vim.api.nvim_set_keymap('n', '<A-1>', ':tabmove +<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-2>', ':tabmove -<CR>', { noremap = true, silent = true })

-- Map Tab to gt and Shift-Tab to gT
vim.api.nvim_set_keymap('n', '<Tab>', 'gt', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', 'gT', { noremap = true })

-- Create a new tab with Alt-t
vim.api.nvim_set_keymap('n', '<A-t>', ':tabnew<CR>', { noremap = true, silent = true })

-- Map Esc to Ctrl-\
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
