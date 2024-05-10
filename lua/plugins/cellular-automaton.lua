-- /lua/plugins/cellular-automaton.lua
--
-- /lua/plugins/cellular-automaton.lua

return {
  'eandrju/cellular-automaton.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  keys = {
    { '<leader>fml', '<cmd>CellularAutomaton make_it_rain<CR>', desc = 'Cellular Automaton: Make it Rain' },
  },
}
