function! SplitHairs() 
    let line = getline(".")
    let arr = split(line, ",")
    let cnt = len(arr)
    let i = 0
    while i < (cnt - 1)
        execute "normal! f,a\<CR>\<ESC>"
        let i += 1
    endwhile

    execute "normal! f}hi\<CR>\<ESC>"
    execute "normal! (f{li\<CR>\<ESC>"
    execute "normal! vi}="

endfunction

command! Split call SplitHairs()
