" Automatically set filetype for .nextstep files
augroup nextstep_filetype
  autocmd!
  autocmd BufNewFile,BufRead NEXTSTEP set filetype=nextstep
augroup END


func NextStepReplaceStatus(id, result)
  if a:result != -1
    let new_status = get(g:status_list, a:result-1, '')
    execute 's/\(NEXTSTEP\|BLOCKED\|DONE\|WONT\)/'.new_status.'/'
    echomsg 'Status changed to '.new_status.' for task on line '.line('.')
  endif
endfunc 


func! NextStepChangeStatus()
  let line_content = getline('.')

  " If no valid status exists on the line, prepend NEXTSTEP and drop into Insert mode
  if line_content !~# '\v(NEXTSTEP|BLOCKED|DONE|WONT)'
    execute 's/^/NEXTSTEP /'
    startinsert!
    echomsg 'Added NEXTSTEP to task on line ' . line('.')
  " If small window, just set status to default
  elseif winwidth(0) < 50
    call DunReplaceStatus(0, 4)
  " Otherwise, show the selection popup menu
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


let g:status_list = [ 'NEXTSTEP','BLOCKED','DONE','WONT' ]

" Change Status
nnoremap cs :call NextStepChangeStatus()<CR>
nnoremap cd :s/^NEXTSTEP/DONE/<CR>

