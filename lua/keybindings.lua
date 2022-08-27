-- 设置常用的快捷键
-- * 全局快捷键 vim.api.nvim_set_keymap()
-- * Buffer快捷键 vim.api.nvim_buf_set_key_map()
-- 一般情况下设置全局快捷键,Buffer快捷键一般是在某些异步回调函数里指定
--
-- -----------------------------------------
-- vim.api.nvim_set_key_map('模式', '按键', '映射为', 'options')
-- [模式] n: Normal 模式; i:Insert 模式; v:Visual 模式; t:Termal 模式; c:Command 模式
-- [options] 大部分设置为 {noremap = true, silent = true} 表示不会重新映射, 不输出多余信息
-- -----------------------------------------

-- 设置一个Leader键 反斜杠
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 定义两个变量, 保存vim.api.nvim_set_keymap, opt
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = false}


map('n', '<C-w>H', ':vertical resize +4<CR>', opt)
map('n', '<C-w>L', ':vertical resize -4<CR>', opt)
map('n', '<C-w>J', ':resize +4<CR>', opt)
map('n', '<C-w>K', ':resize -4<CR>', opt)

map('n', '<C-w>K', ':resize -4<CR>', opt)

map("n", "<leader>t", ":sp | terminal<CR>i", opt)
map("t", "<Esc>", "<C-\\><C-n>:q<CR>", opt)


-- 上下滚动
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

