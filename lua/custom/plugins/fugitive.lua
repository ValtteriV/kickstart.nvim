return {
  'tpope/vim-fugitive',

  config = function()
    vim.keymap.set("n", '<leader>ghd', vim.cmd.Git)
  end
}
