---vim.cmd([[
---  command! -nargs=1 MyCommand lua require('customer/custom_commands').myCommand(<f-args>)
---]])
---
---local custom_commands = {}
---
---function custom_commands.myCommand(arg)
---    -- 这里实现你的自定义指令逻辑
---    print("This is my custom command. Argument: " .. arg)
---    print("This is my custom command. Argument: " .. get_selected_word())
---end
---
----- 获取当前选中的单词
---function get_selected_word()
---  local start_line, start_col, end_line, end_col = unpack(vim.api.nvim_buf_get_mark(0, "<"))
---  local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)
---  local selected_text = table.concat(lines, "\n")
---  local selected_word = selected_text:sub(start_col + 1, end_col)
---  return selected_word
---end
---
---
---return custom_commands

-- 获取当前选中的单词
function get_selected_word()
  -- 省略前面提供的 get_selected_word 函数的代码
  --
  local start_line, start_col, end_line, end_col = unpack(vim.api.nvim_buf_get_mark(0, "<"))
  local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)
  local selected_text = table.concat(lines, "\n")
  local selected_word = selected_text:sub(start_col + 1, end_col)
  return selected_word
end

-- 注册自定义指令
local function register_custom_command()
  vim.cmd([[
    command! -nargs=0 MyWord lua print('Hello world')
  ]])
end

-- 在启动时注册自定义指令
register_custom_command()

