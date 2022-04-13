vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false,
    virtual_text = {
      spacing = 2,
      prefix = '■',
    },
    update_in_insert = true,
  }
)

vim.cmd [[
  highlight! DiagnosticLineNrError guibg=#51202A guifg=#FF0000 gui=bold
  highlight! DiagnosticLineNrWarn guibg=#51412A guifg=#FFA500 gui=bold
  highlight! DiagnosticLineNrInfo guibg=#1E535D guifg=#00FFFF gui=bold
  highlight! DiagnosticLineNrHint guibg=#1E205D guifg=#0000FF gui=bold
]]

local signs = { Error = "", Warn = "", Hint = "�", Info = "" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  local numhl = "DiagnosticLineNr" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = numhl })
end

vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
