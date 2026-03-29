-- lua/custom/plugins/diagram.lua
return {
  {
    '3rd/image.nvim',
    build = false,
    opts = {
      backend = 'kitty',
      processor = 'magick_cli', -- uses imagemagick CLI, no Lua rock needed
      integrations = {
        markdown = {
          enabled = true,
          only_render_image_at_cursor = true,
          filetypes = { 'markdown', 'vimwiki' },
        },
      },
      max_width_window_percentage = 50,
      max_height_window_percentage = 40,
    },
  },

  {
    '3rd/diagram.nvim',
    dependencies = { '3rd/image.nvim' },
    config = function()
      require('diagram').setup {
        integrations = {
          require 'diagram.integrations.markdown',
        },
        renderer_options = {
          mermaid = {
            theme = 'dark',
            background = 'transparent',
            scale = 2,
          },
        },
      }
    end,
  },
}
