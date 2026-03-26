return {
  {
    -- Required terminal provider for claudecode.nvim
    'folke/snacks.nvim',
    priority = 1000, -- load before everything else
    lazy = false, -- must be available at startup
    opts = {},
  },
  {
    'coder/claudecode.nvim',
    dependencies = { 'folke/snacks.nvim' },
    opts = {
      terminal = {
        split_side = 'right',
        split_width_percentage = 0.35, -- Claude takes 35% of editor width
        provider = 'snacks', -- use snacks.nvim for the terminal window
        auto_close = true, -- close terminal when Claude exits
      },
      diff_opts = {
        vertical_split = true, -- show diffs side-by-side
        auto_close_on_accept = true, -- close diff buffer after accepting
      },
      track_selection = true, -- send live visual selection context to Claude
      git_repo_cwd = true, -- pin Claude's cwd to git root (keeps context correct across projects)
    },
    keys = {
      { '<leader>a', nil, desc = 'Claude Code' }, -- which-key group label
      { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle' }, -- open/close Claude terminal
      { '<leader>af', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus' }, -- jump to Claude terminal if open
      { '<leader>ar', '<cmd>ClaudeCode --resume<cr>', desc = 'Resume session' }, -- resume most recent session
      { '<leader>aC', '<cmd>ClaudeCode --continue<cr>', desc = 'Continue session' }, -- continue without session picker
      { '<leader>am', '<cmd>ClaudeCodeSelectModel<cr>', desc = 'Select model' }, -- switch between Claude models
      { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add buffer' }, -- add current file to Claude context
      { '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', desc = 'Accept diff' }, -- accept Claude's proposed changes
      { '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', desc = 'Deny diff' }, -- reject Claude's proposed changes
      {
        '<leader>as',
        '<cmd>ClaudeCodeSend<cr>',
        mode = 'v', -- visual mode only
        desc = 'Send selection', -- send highlighted code to Claude as context
      },
      {
        '<leader>as',
        '<cmd>ClaudeCodeTreeAdd<cr>',
        desc = 'Add file from tree',
        ft = { 'NvimTree', 'neo-tree', 'oil', 'minifiles', 'netrw' }, -- active in file explorer buffers
      },
    },
  },
}
