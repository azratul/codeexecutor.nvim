if exists('g:loaded_azratul') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim           " reset them to defaults

" command to run our plugin
command! -nargs=* CodeExecutor lua require("code_executor").run(<q-args>)

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_azratul = 1
