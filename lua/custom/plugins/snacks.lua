return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    scratch = {
      enabled = true,
      -- optional overrides:
      -- root = vim.fn.stdpath('data') .. '/scratch',
      -- ft = 'markdown',
    },
  },
  keys = {
    {
      '<leader>.',
      function() Snacks.scratch() end,
      desc = 'Toggle Scratch Buffer',
    },
    {
      '<leader>S',
      function() Snacks.scratch.select() end,
      desc = 'Select Scratch Buffer',
    },
  },
}
