local status_ok, auto_tag = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

auto_tag.setup {
  autotag = {
    enable = true,
  },
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = {
    spacing = 5,
    severity_limit = "Warning",
  },
  update_in_insert = true,
})
