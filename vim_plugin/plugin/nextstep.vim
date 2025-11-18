" Automatically set filetype for .nextstep files
augroup nextstep_filetype
  autocmd!
  autocmd BufNewFile,BufRead *.nextstep set filetype=nextstep
augroup END


func NextStepReplaceStatus(id, result)
  if a:result != -1
    let new_status = get(g:status_list, a:result-1, '')
    execute 's/\(TODO\|WAIT\|DONE\|WONT\)/'.new_status.'/'
    echomsg 'Status changed to '.new_status.' for task on line '.line('.')
  endif
endfunc


func! NextStepChangeStatus()
  " If small window, just set any status to default done status
  if winwidth(0) < 50
    call DunReplaceStatus(0, 4)
  else
    call popup_create(g:status_list, #{
      \ title: 'Set status:',
      \ line: 'cursor+1',
      \ col: 'cursor+1',
      \ cursorline: 1,
      \ padding: [0,1,0,1],
      \ filter: 'popup_filter_menu',
      \ mapping: 0,
      \ callback: 'NextStepReplaceStatus',
    \ })
  endif
endfunc


let g:status_list = [ 'TODO','WAIT','DONE','WONT' ]

" Change Status
nnoremap cs :call NextStepChangeStatus()<CR>

