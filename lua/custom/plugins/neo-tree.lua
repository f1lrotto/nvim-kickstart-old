return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  opts = {
    filesystem = {
      filtered_items = {
        --visible = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          '.github',
          '.gitignore',
          'package-lock.json',
        },
        never_show = { '.git' },
      },
    },
  },
  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left toggle<CR>', {})
    vim.keymap.set('n', '<leader>bf', ':Neotree buffers reveal float<CR>', {})
  end,
}
