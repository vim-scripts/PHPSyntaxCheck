"2014.7.9 PHP保存时自动检查
function! CheckPHP()
    if &filetype == 'php'
        let result = system('php -l '.expand('%'))
        if (stridx(result, 'No syntax errors detected') == -1)
            echohl WarningMsg
            echo result
            echohl None
        endif
    endif
endfunction

autocmd BufWritePost * call CheckPHP()
map eep :call CheckPHP()<CR>