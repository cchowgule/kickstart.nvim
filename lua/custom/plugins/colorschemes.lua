return {
  -- Catppuccin Theme
  {
    'catppuccin/nvim', -- Plugin repository
    name = 'catppuccin', -- Plugin name
    priority = 1000, -- Load order priority
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- Available flavors: latte, frappe, macchiato, mocha
        transparent_background = false, -- Disable transparent background
        integrations = { -- Enable integrations with other plugins
          cmp = true, -- Completion plugin
          gitsigns = true, -- Git signs
          nvimtree = true, -- File explorer
          treesitter = true, -- Syntax highlighting
          telescope = true, -- Fuzzy finder
          which_key = true, -- Keybinding helper
        },
      }
    end,
  },

  -- Tokyo Night Theme
  {
    'folke/tokyonight.nvim', -- Plugin repository
    priority = 1000, -- Load order priority
    opts = {
      style = 'night', -- Available styles: night, storm, day, moon
      transparent = false, -- Disable transparent background
    },
    -- Uncomment the following lines to set the colorscheme
    -- config = function()
    --   vim.cmd.colorscheme("tokyonight")
    -- end,
  },

  -- Gruvbox Theme
  {
    'ellisonleao/gruvbox.nvim', -- Plugin repository
    priority = 1000, -- Load order priority
    opts = {
      terminal_colors = true, -- Enable terminal colors
      contrast = '', -- Available contrasts: "hard", "soft", or ""
    },
  },

  -- Nord Theme
  {
    'shaunsingh/nord.nvim', -- Plugin repository
    priority = 1000, -- Load order priority
    config = function()
      vim.g.nord_contrast = true -- Enable contrast
      vim.g.nord_borders = false -- Disable borders
      vim.g.nord_disable_background = false -- Enable background
      vim.g.nord_italic = false -- Disable italic text
    end,
    -- Available variants: Default Nord theme (no additional variants)
  },

  -- Kanagawa Theme
  {
    'rebelot/kanagawa.nvim', -- Plugin repository
    priority = 1000, -- Load order priority
    opts = {
      theme = 'wave', -- Available themes: wave, dragon, lotus
      transparent = false, -- Disable transparent background
    },
  },

  -- Rose Pine Theme
  {
    'rose-pine/neovim', -- Plugin repository
    name = 'rose-pine', -- Plugin name
    priority = 1000, -- Load order priority
    opts = {
      variant = 'moon', -- Available variants: auto, main, moon, dawn
    },
  },

  -- Nightfox Theme
  {
    'EdenEast/nightfox.nvim', -- Plugin repository
    priority = 1000, -- Load order priority
    opts = {
      options = {
        transparent = false, -- Disable transparent background
        terminal_colors = true, -- Enable terminal colors
        dim_inactive = true,
      },
    },
    config = function()
      vim.cmd.colorscheme 'carbonfox' -- Set the colorscheme to 'carbonfox'
    end,

    -- Available variants: nightfox, dayfox, dawnfox, duskfox, nordfox, carbonfox
  },

  -- OneDark Theme
  {
    'navarasu/onedark.nvim', -- Plugin repository
    priority = 1000, -- Load order priority
    opts = {
      style = 'dark', -- Available styles: dark, darker, cool, deep, warm, warmer
    },
  },

  -- Everforest Theme
  {
    'neanias/everforest-nvim', -- Plugin repository
    priority = 1000, -- Load order priority
    config = function()
      require('everforest').setup {
        background = 'hard', -- Available backgrounds: hard, medium, soft
        transparent_background_level = 0, -- Disable transparent background
        italics = true, -- Enable italic text
        disable_italic_comments = false, -- Enable italic comments
      }
      -- Uncomment the following line to set the colorscheme
      -- vim.cmd.colorscheme 'everforest'
    end,
  },
}
