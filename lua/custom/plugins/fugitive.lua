return {
  'tpope/vim-fugitive',

  config = function()
    vim.keymap.set("n", '<leader>ghd', function ()
      vim.cmd.Git()
      vim.cmd.resize(20)
    end 
    )
  end
}
