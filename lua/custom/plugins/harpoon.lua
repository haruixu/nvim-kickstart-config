return {
  {
    'ThePrimeagen/harpoon', -- Plugin name
    lazy = true, -- Load the plugin lazily
    keys = { -- Keys that will trigger loading the plugin
      { '<leader>a', desc = 'Add file to Harpoon' },
      { '<leader>e', desc = 'Toggle Harpoon menu' },
      { '<C-h>', desc = 'Navigate to Harpoon file 1' },
      { '<C-j>', desc = 'Navigate to Harpoon file 2' },
      { '<C-k>', desc = 'Navigate to Harpoon file 3' },
      { '<C-l>', desc = 'Navigate to Harpoon file 4' },
    },
    config = function()
      -- Require harpoon modules
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      -- Key mappings
      vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Add file to Harpoon' })
      vim.keymap.set('n', '<leader>e', ui.toggle_quick_menu, { desc = 'Toggle Harpoon menu' })

      -- Navigation key mappings
      vim.keymap.set('n', '<C-h>', function()
        ui.nav_file(1)
      end, { desc = 'Navigate to Harpoon file 1' })
      vim.keymap.set('n', '<C-j>', function()
        ui.nav_file(2)
      end, { desc = 'Navigate to Harpoon file 2' })
      vim.keymap.set('n', '<C-k>', function()
        ui.nav_file(3)
      end, { desc = 'Navigate to Harpoon file 3' })
      vim.keymap.set('n', '<C-l>', function()
        ui.nav_file(4)
      end, { desc = 'Navigate to Harpoon file 4' })

      vim.cmd 'highlight! HarpoonInactive guibg=NONE guifg=#63698c'
      vim.cmd 'highlight! HarpoonActive guibg=NONE guifg=white'
      vim.cmd 'highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7'
      vim.cmd 'highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7'
      vim.cmd 'highlight! TabLineFill guibg=NONE guifg=white'
    end,
  },
}
