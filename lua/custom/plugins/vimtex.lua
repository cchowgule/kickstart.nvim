-- LaTeX: syntax, text objects, latexmk compilation and SyncTeX with zathura.
-- texlab (LSP) is configured in init.lua and does not compile.

---@module 'lazy'
---@type LazySpec
return {
  'lervag/vimtex',
  lazy = false, -- vimtex lazy-loads itself; lazy.nvim lazy-loading breaks inverse search
  init = function()
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_quickfix_mode = 0 -- diagnostics come from texlab/chktex; open with :copen when needed
  end,
}
