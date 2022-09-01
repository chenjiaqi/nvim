--[[
-- 该文件放置非常常用的配置
--]]

--[[
-- vim.g.{name}:全局变量
-- vim.b.{name}:缓冲区变量
-- vim.w.{name}:窗口变量
-- vim.bo.{option}:buff-local选项
-- vim.wo.{option}:window-local选项
--]]


-- 设置全局编码模式
vim.g.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- 使用JK移动时,保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true

-- 高亮所在行
vim.wo.cursorline = true

-- 显示左侧图标指示列,该选项会让左侧流出一列用于符号显示
vim.wo.signcolumn = 'yes'

-- 右参考线,提示换行
vim.wo.colorcolumn= '120'


-- 缩进, 2个空格等于一个TAB
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.o.shiftround = true

-- 空格代替TAB
vim.o.expandtab = true
vim.bo.expandtab = true

-- << >> 移动长度,此处会显示对齐线
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2



-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true


-- 搜索大小写不敏感
vim.o.ignorecase = true
vim.o.smartcase = true

-- 搜索高亮
vim.o.hlsearch = true

-- 命令行高
vim.o.cmdheight = 1

-- 当文件被外部修改时,自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折叠行
vim.wo.wrap = false

-- 光标在行首尾时,可以<Left><Right>可以跳到下一行
vim.o.whichwrap = '<,>,[,]'

-- 允许隐藏被修改过后的buffer
vim.o.hidden = true

-- 支持鼠标
-- vim.mouse = "a"


-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller udatetime
vim.o.updatetime = 300

-- 设置 键盘快捷键连击时间长度
vim.o.timeoutlen = 500

-- 设置分屏幕位置, 从右边和下面出现
vim.o.splitbelow = true
vim.o.splitright = true

-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- 样式,选择会变得很鲜艳
-- vim.o.background = "dark"
-- vim.o.termguicolors = true
-- vim.opt.termguicolors = true

-- 不可见字符显示,关闭,眼花缭乱
vim.o.list = false
vim.o.listchars = "space:."

-- 补全增强
vim.o.wildmenu = true

-- Don't pass message to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. 'c'

-- 补全最多显示10行
vim.o.pumheight = 10

-- 补全最多显示10行
vim.o.showtabline = 2
-- 使用增强状态栏插件后不需要vim的模式提示
vim.o.showmode = false


