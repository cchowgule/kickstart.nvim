return {
  'tpope/vim-fugitive',
  cmd = {
    'G',
    'Git',
    'Gdiffsplit',
    'Gread',
    'Gwrite',
    'Ggrep',
    'GMove',
    'GDelete',
    'GBrowse',
    'GRemove',
    'GRename',
  },
  keys = {
    { '<leader>gs', '<cmd>Git<cr>', desc = 'Git status' },
  },
}
