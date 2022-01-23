vim.cmd [[
try
  "colorscheme darkplus
  " colorscheme onedarker
  "colorscheme tomorrow
  "colorscheme system76
  "colorscheme aurora
  colorscheme onedark
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
