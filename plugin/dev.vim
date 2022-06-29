function! ReloadCodeExecutor()
lua << EOF
    for k in pairs(package.loaded) do
        if k:match("^hello") then
            package.loaded[k] = nil
        end
    end
EOF
endfunction
" Reload the plugin
nnoremap <Leader>pra :call ReloadCodeExecutor()<CR>
" Test the plugin
nnoremap <Leader>ptt :lua require("code_executor").run()<CR>
