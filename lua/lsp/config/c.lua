local  caps = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

caps.offsetEncoding = 'utf-8'

print('----------')
  

local opts = {
  flags = {
    debounce_text_changes = 150,
  },


  capabilities = caps,

  on_attach = function(client, bufnr)
    print('C Attached ', client.resolved_capabilities.offsetEncoding)

    print('\n')
    print('C Attached xx', client.resolved_capabilities)

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
