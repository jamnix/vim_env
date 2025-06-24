" Simple vim-z plugin - just :Z command for vertical split
if exists('g:loaded_vim_z_simple')
  finish
endif
let g:loaded_vim_z_simple = 1

" Load Z data from ~/.z file
function! s:GetZMatches(args)
  let z_file = expand('~/.z')
  if !filereadable(z_file)
      return []
  endif
  
  let matches = []
  let line_count = 0
  for line in readfile(z_file)
      let line_count += 1
      " Limit processing for very large files
      if line_count > 1000
          break
      endif
      
      let parts = split(line, '|')
      if len(parts) >= 3
          let path = parts[0]
          let rank = str2float(parts[1])
          
          " Check if directory exists
          if isdirectory(path)
              " Check if all arguments match the path
              let all_match = 1
              for arg in a:args
                  if !empty(arg) && path !~? arg
                      let all_match = 0
                      break
                  endif
              endfor
              
              if all_match
                  call add(matches, {'path': path, 'rank': rank})
              endif
          endif
      endif
  endfor
  
  " Sort by rank (higher is better)
  call sort(matches, {a, b -> float2nr(b.rank - a.rank)})
  return matches
endfunction

" Main Z function
function! VimZ(...)
  let matches = s:GetZMatches(a:000)
  
  if len(matches) > 0
      let best_path = matches[0].path
      execute 'vs ' . fnameescape(best_path)
      echo 'Opened: ' . best_path
  else
      let pattern_str = join(a:000, ' ')
      echo 'No matches found' . (empty(pattern_str) ? '' : ' for: ' . pattern_str)
  endif
endfunction

" Create the command
command! -nargs=* Z call VimZ(<f-args>)

" Add key mapping
nnoremap <leader>z :Z<space>
