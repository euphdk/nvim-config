return {
  "olexsmir/gopher.nvim",
  ft = "go",
  build = function()
    vim.cmd([[silent! GoInstallDeps]])
  end,
  -- (optional) will update plugin's deps on every update
  -- build = function()
  --     vim.cmd.GoInstallDeps()
  -- end,
  -- ---@type gopher.Config
  opts = {},
}
