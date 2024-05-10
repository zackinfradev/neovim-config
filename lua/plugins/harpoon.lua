-- /lua/plugins/harpoon.lua
--
return {
  'theprimeagen/harpoon',
  keys = {
    { '<leader>x', function() require('harpoon.mark').add_file() end, desc = 'Harpoon: Add File' },
    { '<C-e>', function() require('harpoon.ui').toggle_quick_menu() end, desc = 'Harpoon: Toggle Quick Menu' },
    { '<C-h>', function() require('harpoon.ui').nav_file(1) end, desc = 'Harpoon: Navigate to File 1' },
    { '<C-j>', function() require('harpoon.ui').nav_file(2) end, desc = 'Harpoon: Navigate to File 2' },
    { '<C-k>', function() require('harpoon.ui').nav_file(3) end, desc = 'Harpoon: Navigate to File 3' },
    { '<C-l>', function() require('harpoon.ui').nav_file(4) end, desc = 'Harpoon: Navigate to File 4' },
  },
}
