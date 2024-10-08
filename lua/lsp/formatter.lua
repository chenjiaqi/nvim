local status, formatter = pcall(require, "formatter")
if not status then
  vim.notify("没有找到 formatter")
  return
end

formatter.setup({
  filetype = {
    lua = {
      function()
        return {
          exe = "stylua",
          args = {
            -- "--config-path "
            --   .. os.getenv("XDG_CONFIG_HOME")
            --   .. "/stylua/stylua.toml",
            "-",
          },
          stdin = true,
        }
      end,
    },
    rust = {
      -- Rustfmt
      function()
        return {
          exe = "rustfmt",
          args = { "--emit=stdout" },
          stdin = true,
        }
      end,
    },
    c = {
      function()
        return {
          exe = "clang-format",
          filetype = { "c", "cpp"},
          stdin = true,
        }
      end,
    },
    cpp = {
      function()
        return {
          exe = "clang-format",
          filetype = { "cpp", "cc"},
          stdin = true,
        }
      end,
    },
    python = {
      function()
        return {
          exe = "black",
          args = { "-" },
          filetype = { "py"},
          stdin = true,
        }
      end,
    },
    csharp = {
      function()
        return {
          exe = "dotnet-csharpier",
          args = {"--write-stdout -"},
          filetype = { "cs"},
          stdin = false,
        }
      end,
    },
  },
})

-- format on save
vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.lua,*.cs FormatWrite
augroup END
]],
  true
)
