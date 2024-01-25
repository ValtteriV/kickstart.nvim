return { 'folke/which-key.nvim',
  opts = {},
  config = function ()
    local wk = require('which-key')
    wk.register({
      h = {
        name = '[H]arpoon'
      },
      m = {
        name = '[M]ake ...'
      }
    }, { prefix = '<leader>' })
  end,
}
