" In Editor commands
set number
set clipboard+=unnamedplus

" NeoBundle Scripts-----------------------------
if has('vim_starting')
  " Required:
  set runtimepath+=/home/pramodkadam/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/pramodkadam/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'			" Git integration
NeoBundle 'ctrlpvim/ctrlp.vim'			" ....
NeoBundle 'scrooloose/nerdtree'			" File Browser
NeoBundle 'scrooloose/syntastic'		" Syntax checking
NeoBundle 'valloric/youcompleteme'		" Code Autocomplete
NeoBundle 'nathanaelkane/vim-indent-guides'	" Guide for indentation
NeoBundle 'ap/vim-css-color'			" CSS Color Scheme
NeoBundle 'vim-airline/vim-airline'		" Status Airline
NeoBundle 'vim-airline/vim-airline-themes'	" Airline themes
NeoBundle 'neoclide/coc.nvim'			" Language server
" NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"								"
"			mapping					"
"								"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "
" NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"								"
"								"
"								"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 if !exists('g:airline_symbols')
  let g:airline_symbols = {}
 endif

" powerline symbols
 let g:airline_left_sep = ''
 let g:airline_left_alt_sep = ''
 let g:airline_right_sep = ''
 let g:airline_right_alt_sep = ''
 let g:airline_symbols.branch = ''
 let g:airline_symbols.readonly = ''
 let g:airline_symbols.linenr = ' ☰ '
 let g:airline_symbols.maxlinenr = ''
 let g:airline_symbols.dirty='⚡'

let g:airline_theme='bubblegum'

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
