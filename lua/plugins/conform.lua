return {
  'stevearc/conform.nvim',
  event = 'BufWritePre', -- uncomment for format on save
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      -- css = { "prettier" },
      -- html = { "prettier" },
      go = { 'gofmt', 'goimports', 'goimports-reviser' },
      -- go = { "gofmt", "goimports-reviser", "golines" },
      python = { 'black' },
    },

    formatters = {
      -- go
      ['goimports-reviser'] = {
        prepend_args = { '-rm-unused' },
      },
      golines = {
        prepend_args = { '--max-len=80' },
      },
      -- Python
      black = {
        prepend_args = {
          '--fast',
          '--line-length',
          '80',
        },
      },
    },

    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 1000,
      lsp_fallback = true,
    },
  },
}
