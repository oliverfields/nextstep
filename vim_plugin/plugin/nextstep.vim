" Automatically set filetype for .nextstep files
augroup nextstep_filetype
  autocmd!
  autocmd BufNewFile,BufRead NEXTSTEP set filetype=nextstep
augroup END


func NextStepReplaceStatus(id, result)
  if a:result != -1
    let new_status = get(g:status_list, a:result-1, '')
    let line_content = getline('.')

    " Check if the line already contains one of the statuses
    if line_content =~ '\v(NEXTSTEP|BLOCKED|DONE|WONT)'
      execute 's/\(NEXTSTEP\|BLOCKED\|DONE\|WONT\)/' . new_status . '/'
    else
      " If no status found, prepend the new status (or NEXTSTEP if no selection) to the start of the line
      let status_to_add = empty(new_status) ? 'NEXTSTEP' : new_status
      execute 's/^/' . status_to_add . ' /'
    endif

    echomsg 'Status changed to ' . new_status . ' for task on line ' . line('.')
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


let g:status_list = [ 'NEXTSTEP','BLOCKED','DONE','WONT' ]

" Change Status
nnoremap cs :call NextStepChangeStatus()<CR>
nnoremap cd :s/^NEXTSTEP/DONE/<CR>

