return {
  {
    'ThePrimeagen/harpoon', -- Plugin name
    lazy = false, -- Load the plugin lazily
    config = function()
      -- Require harpoon modules
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      -- Key mappings
      vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Add file to Harpoon' })
      vim.keymap.set('n', '<leader>e', ui.toggle_quick_menu, { desc = 'Toggle Harpoon menu' })

      -- Navigation key mappings
      vim.keymap.set('n', '<leader>h', function()
        ui.nav_file(1)
      end, { desc = 'Navigate to Harpoon file 1' })
      vim.keymap.set('n', '<leader>j', function()
        ui.nav_file(2)
      end, { desc = 'Navigate to Harpoon file 2' })
      vim.keymap.set('n', '<leader>k', function()
        ui.nav_file(3)
      end, { desc = 'Navigate to Harpoon file 3' })
      vim.keymap.set('n', '<leader>k', function()
        ui.nav_file(4)
      end, { desc = 'Navigate to Harpoon file 4' })

      require('harpoon').setup {
        -- Override the tabline setting
        tabline = true, -- Enable the tabline
        tabline_prefix = '   ', -- Example of a custom prefix
        tabline_suffix = '   ', -- Example of a custom suffix
      }

      vim.cmd 'highlight! HarpoonInactive guibg=NONE guifg=#63698c'
      vim.cmd 'highlight! HarpoonActive guibg=NONE guifg=white'
      vim.cmd 'highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7'
      vim.cmd 'highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7'
      vim.cmd 'highlight! TabLineFill guibg=NONE guifg=white'

      -- Make harpoon menu widht relative to screen width
      -- require('harpoon').setup {
      --   menu = {
      --     width = vim.api.nvim_win_get_width(0) - 100,
      --   },
      -- }
    end,
  },
}
