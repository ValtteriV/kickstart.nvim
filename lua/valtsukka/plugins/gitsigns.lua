return {
  -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  opts = {
    -- See `:help gitsigns.txt`
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      local gs = require('gitsigns')

      map('n', '<leader>gp', gs.prev_hunk,
        { buffer = bufnr, desc = '[G]o to [P]revious Hunk' })
      map('n', '<leader>gn', gs.next_hunk, { buffer = bufnr, desc = '[G]o to [N]ext Hunk' })
      map('n', '<leader>ph', gs.preview_hunk, { buffer = bufnr, desc = '[P]review [H]unk' })
      map('n', '<leader>gb', function()
        gs.blame_line { full = false }
      end, { desc = 'git blame line' })
      map('n', '<leader>ghs', gs.stage_hunk, { desc = 'git stage hunk' })
      map('n', '<leader>ghr', gs.reset_hunk, { desc = 'git reset hunk' })
      map('n', '<leader>ghS', gs.stage_buffer, { desc = 'git Stage buffer' })
      map('n', '<leader>ghu', gs.undo_stage_hunk, { desc = 'undo stage hunk' })
      map('n', '<leader>ghR', gs.reset_buffer, { desc = 'git Reset buffer' })
      map('n', '<leader>ghp', gs.preview_hunk, { desc = 'preview git hunk' })
    end,
  },
}
