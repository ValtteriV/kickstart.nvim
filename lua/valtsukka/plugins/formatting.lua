return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        json = { 'prettier' },
      }
    })
    

    vim.keymap.set({ 'n', 'v' }, '<leader>mp', function()
      conform.format({
        lsp_fallback = true,
	async = false,
	timeout_ms = 500,
	})
      end, { desc = '[M]ake [P]retty' })
  end,
}
