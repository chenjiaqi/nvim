local  caps = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

caps.offsetEncoding = 'utf-8'

local opts = {
  flags = {
    debounce_text_changes = 150,
  },


  capabilities = caps,

  on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    require("keybindings").mapLSP(buf_set_keymap)
  end,
}
return {
  on_setup = function(server)
    server.setup(opts)
  end,
}
