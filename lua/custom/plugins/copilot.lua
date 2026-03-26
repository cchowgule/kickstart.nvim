return { -- Return a table containing plugin specifications
  { -- First plugin specification (copilot.lua)
    'zbirenbaum/copilot.lua', -- Plugin repository for copilot.lua
    cmd = 'Copilot', -- Lazy-load on :Copilot command
    event = 'InsertEnter', -- Lazy-load on InsertEnter event
    config = function() -- Configuration function for copilot.lua
      require('copilot').setup { -- Call setup for copilot with options
        panel = { -- Panel configuration
          enabled = true, -- Enable the Copilot panel
          auto_refresh = false, -- Disable auto-refresh for the panel
          keymap = { -- Key mappings for the panel
            jump_prev = '[[', -- Jump to previous suggestion
            jump_next = ']]', -- Jump to next suggestion
            accept = '<CR>', -- Accept suggestion with Enter
            refresh = 'gr', -- Refresh panel with 'gr'
            open = '<M-CR>', -- Open panel with Alt+Enter
          }, -- End of panel keymap
          layout = { -- Layout configuration for the panel
            position = 'bottom', -- | top | left | right -- Panel position at bottom
            ratio = 0.4, -- Panel takes 40% of space
          }, -- End of layout
        }, -- End of panel
        suggestion = { -- Suggestion configuration
          enabled = true, -- Enable inline suggestions
          auto_trigger = true, -- Auto-trigger suggestions
          debounce = 75, -- Debounce time in ms
          keymap = { -- Key mappings for suggestions
            accept = '<M-l>', -- Accept suggestion     -- Accept suggestion with Alt+l
            accept_word = false, -- Disable accept word
            accept_line = false, -- Disable accept line
            next = '<M-]>', -- Next suggestion with Alt+]
            prev = '<M-[>', -- Previous suggestion with Alt+[
            dismiss = '<C-]>', -- Dismiss suggestion with Ctrl+]
          }, -- End of suggestion keymap
        }, -- End of suggestion
        filetypes = { -- Filetype-specific configuration
          yaml = false, -- Disable Copilot for YAML
          markdown = false, -- Disable Copilot for Markdown
          help = false, -- Disable Copilot for help files
          gitcommit = false, -- Disable Copilot for gitcommit
          gitrebase = false, -- Disable Copilot for gitrebase
          hgcommit = false, -- Disable Copilot for hgcommit
          svn = false, -- Disable Copilot for svn
          cvs = false, -- Disable Copilot for cvs
          ['.'] = false, -- Disable Copilot for dotfiles
        }, -- End of filetypes
        copilot_node_command = 'node', -- Node.js version must be > 18.x -- Specify Node.js command
        server_opts_overrides = {}, -- Override server options (empty)
      } -- End of setup options
    end, -- End of config function
  },
}
