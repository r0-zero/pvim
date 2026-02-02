local opt = vim.opt
local g = vim.g

-------------------------------------- globals -----------------------------------------
g.toggle_theme_icon = "   "

opt.encoding = "utf-8"
opt.mouse = "a"
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 20
opt.hidden = true
opt.number = true
opt.hlsearch = false
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.cinoptions = '(0'
opt.expandtab = false
opt.smartindent = true
opt.completeopt = { "menuone", "noselect" }
opt.wildignorecase = true
opt.viminfo="'1000,f1"
opt.ignorecase = true
opt.conceallevel = 0
opt.concealcursor = "vin"
opt.cursorline = true
opt.cursorlineopt = "number"
opt.pumheight = 15
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.updatetime = 200
opt.undofile = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.signcolumn = "yes"
opt.showmode = false
opt.shortmess:append "c"
opt.whichwrap:append "<,>,[,],h,l"
-- Make compatible with st, truecolors
vim["&t_8f"] = "\\<Esc>[38;2;%lu;%lu;%lum"
vim["&t_8b"] = "\\<Esc>[48;2;%lu;%lu;%lum"
opt.termguicolors = true
vim.cmd [[set formatoptions-=cro]]
