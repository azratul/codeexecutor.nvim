if exists('g:loaded_codeexecutor') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim           " reset them to defaults

" command to run our plugin
command! -complete=file -nargs=1 CodeExecutorStart lua require("code_executor").run(<q-args>)
command! CodeExecutorStop lua require("code_executor").close()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_codeexecutor = 1
