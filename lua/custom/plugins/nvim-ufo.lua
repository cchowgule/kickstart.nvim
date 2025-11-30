return {
  'kevinhwang91/nvim-ufo',
  dependencies = {
    'kevinhwang91/promise-async',
  },
  event = 'VeryLazy', -- Load after startup for better performance
  opts = {
    -- Optional: customize which fold providers to use
    provider_selector = function(bufnr, filetype, buftype)
      return { 'treesitter', 'indent' }
    end,
  },
  config = function(_, opts)
    -- Required setup
    require('ufo').setup(opts)

    -- Set fold settings
    vim.o.foldcolumn = '1' -- Show fold column
    vim.o.foldlevel = 99 -- Using ufo provider needs a large value
    vim.o.foldlevelstart = 99 -- Start with all folds open
    vim.o.foldenable = true

    -- Optional: Set up keymaps
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds, { desc = 'Open all folds' })
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds, { desc = 'Close all folds' })
    vim.keymap.set('n', 'zK', function()
      local winid = require('ufo').peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
    end, { desc = 'Peek fold or show hover' })
  end,
}
