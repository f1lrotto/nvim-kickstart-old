return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
  },
  config = function()
    ensure_installed = { 'eslint_d', 'stylua', 'prettier' }
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        require 'none-ls.diagnostics.eslint_d',
        null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.formatting.prettier,
      },
    }
    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, { desc = 'Format file using none-ls' })
  end,
}
