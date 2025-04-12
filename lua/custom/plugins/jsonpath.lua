return {
  "phelipetls/jsonpath.nvim",
  config = function()
    local jsonpath = require("jsonpath")

    vim.keymap.set('n', '<leader>cjp', function () vim.fn.setreg("+", jsonpath.get():sub(2)) end)
  end
}
