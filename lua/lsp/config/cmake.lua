local opts = {
  flags = {
    debounce_text_changes = 150,
  },
}

return {
  on_setup = function(server)
    print('Set UP')
    server.setup(opts)
  end,
}
