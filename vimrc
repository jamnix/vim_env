" File: .vimrc
"
" Gotta be first
set nocompatible

set t_Co=256

filetype  off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" ----- Making Vim look good ------------------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'

" ----- Vim as a programmer's text editor -----------------------------
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'scrooloose/syntastic'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
"Plugin 'vim-scripts/a.vim'

" ----- Working with Git ----------------------------------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
"  符号补全
Plugin 'Raimondi/delimitMate'

" ----- man pages, tmux -----------------------------------------------
"Plugin 'jez/vim-superman'
"Plugin 'christoomey/vim-tmux-navigator'

" ----- Syntax plugins ------------------------------------------------
"Plugin 'jez/vim-c0'
"Plugin 'jez/vim-ispc'
"Plugin 'kchmck/vim-coffee-script'

" ---- Extras/Advanced plugins ----------------------------------------
" Highlight and strip trailing whitespace
"Plugin 'ntpeters/vim-better-whitespace'
" Easily surround chunks of text
"Plugin 'tpope/vim-surround'
" Align CSV files at commas, align Markdown tables, and more
"Plugin 'godlygeek/tabular'
" Automaticall insert the closing HTML tag
"Plugin 'HTML-AutoCloseTag'
" Make tmux look like vim-airline (read README for extra instructions)
"Plugin 'edkolev/tmuxline.vim'
" All the other syntax plugins I use
"Plugin 'ekalinin/Dockerfile.vim'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'tpope/vim-liquid'
"Plugin 'cakebaker/scss-syntax.vim'
"-------------------------------------------------------------------------
"dragonwei add:
" 快速注释
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"-------------------------------------------------------------------------
Plugin 'fatih/vim-go'

"-------------------------------------------------------------------------
"switching between companion files
Plugin 'jlanzarotta/bufexplorer'

call vundle#end()

filetype plugin indent on

" --- General settings ---
set backspace=indent,eol,start
set ruler
"set number
set showcmd
set incsearch
set hlsearch
set ic

syntax on
set autoindent
set cindent
set cursorline
"syntax enable
"远程登陆时关闭,否则不支持鼠标复制粘贴
"set mouse=a

set tabstop=4
set shiftwidth=4
set expandtab

set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030,cp936

" -------derekwyatt/vim-fswitch------------
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :AS<cr>

" ------------system clipboard -----------
set clipboard=unnamed
"nmap <Leader>y "*y"<cr>
"vmap <Leader>y "*y"<cr>
"nmap <Leader>p "*p"<cr>  leader p 已经使用了

" -------bufExplorer-----------------------
"let g:bufExplorerDefaultHelp=0       " Do not show default help.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"           YouCompleteMe:
"
"

"let g:ycm_complete_in_comments = 1
"let g:ycm_error_symbol = '>'
"let g:ycm_warning_symbol = '*'
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
""let g:ycm_autoclose_preview_window_after_completion = 1
""let g:ycm_autoclose_preview_window_after_insertion = 1
""let g:ycm_key_invoke_completion = '<C-n>'
"let g:ycm_key_detailed_diagnostics = '<leader>d'
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
"let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_min_num_of_chars_for_completion=1
""let g:ycm_collect_identifiers_from_comments_and_strings = 1
"
""inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项"
"nnoremap <F4> :YcmDiags<CR>
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
"nnoremap <C-g> :YcmCompleter GoTo<CR>
"nnoremap <C-t> :YcmCompleter GetType<CR>
"nnoremap <leader>ycmp :YcmCompleter GetParent<CR>
"nnoremap <leader>ycmd :YcmCompleter GetDoc<CR>
"nnoremap <leader>ycmf :YcmCompleter FixIt<CR>

""
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ----- Plugin-Specific Settings --------------------------------------
" ----- nathanaelkane/vim-indent-guides Settings ----------
"let g:indent_guides_enable_on_vim_startup=1
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
"nmap <silent> <leader>i <Plugin>IndentGuidesToggle<CR>

" ------ UltiSnips Settings -------------------
"let g:UltiSnipsSnippetDirectories=['UltiSnips']
"let g:UltiSnipsSnippetDir="~/.vim/UltiSnips"
"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<c-b>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-z>"


" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
"set background=dark
" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256

" Set the colorscheme
"colorscheme solarized
colorscheme molokai


" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_warning = 0


" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
" nmap <silent> <leader>\t :NERDTreeTabsToggle<CR>
nmap <leader>n :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_autofind = 1


" ----- scrooloose/syntastic settings -----
"  有可能有性能问题，一般没事。
"let g:syntastic_check_on_open = 0
"let g:syntastic_error_symbol = '✘'
"let g:syntastic_warning_symbol = "▲"
"自动开启静态语法检查
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_loc_list_height = 5
"let g:syntastic_enable_highlighting = 0
"augroup mySyntastic
""  au!
"  au FileType tex let b:syntastic_mode = "passive"
"augroup END


" ----- xolox/vim-easytags settings -----
" Where to look for tags files
"set tags=~/.tags;,~/.vimtags
set tags=tags;
" Sensible defaults
"let g:easytags_events = ['BufReadPost', 'BufWritePost']
"let g:easytags_async = 1
"let g:easytags_dynamic_files = 2
"let g:easytags_resolve_links = 1
"let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <leader>m :TagbarToggle<CR>
let g:tagbar_sort = 0
" let tagbar refresh faster
set updatetime=100
"let g:tagbar_ctags_bin = 'ctags' 
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)


" ----- airblade/vim-gitgutter settings -----
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1


" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

"let g:molokai_original = 1
"let g:rehash256 = 0 

nmap <F11> :!cd build && make<CR>
au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au FileType go nmap <leader>gc <Plug>(go-coverage)
au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gdv <Plug>(go-doc-vertical)
au FileType go nmap <leader>gdb <Plug>(go-doc-browser)
au FileType go nmap <leader>im <Plug>(go-implements)
au FileType go nmap <leader>in <Plug>(go-info)
au FileType go nmap <leader>re <Plug>(go-rename)
au FileType go nmap <leader>rt <Plug>(go-run-tab)
au FileType go nmap <leader>rs <Plug>(go-run-split)
au FileType go nmap <leader>rv <Plug>(go-run-vertical)



nmap <leader>v :vs <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>p :echo expand('%:p')<CR>
nmap <leader>kk :mksession! /tmp/.session.vim<CR>
nmap <leader>ss :source /tmp/.session.vim<CR>
nmap <leader>vm :vs /data/mm64/harleyhuang/QQMail/micromsg/mmfinder/proto<CR>
nmap <leader>vg :vs /data/mm64/harleyhuang/QQMail/mmgateway/public/proto/mmfinder<CR>

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |  exe "normal! g'\"" | endif

"if filereadable("cscope.out")
"set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
"cs add cscope.out
"nmap <leader>f :e cscope.files<CR>
"nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>
""nmap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"nmap <leader>co :copen<CR>
"nmap <leader>cc :cclose<CR>

"let mapleader = "\<Space>" "
map <leader>h <F1> 
map <leader>w :set wrap<CR>


