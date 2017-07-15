" plugin management
execute pathogen#infect()
filetype plugin indent on

" Basic setup
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set laststatus=2

" Command completion
set wildmenu 

" Search highlight
set incsearch
set hlsearch
nnoremap <Leader>l :nohl<CR><C-L>

" Colorscheme
syntax on
set number
set background=dark
colorscheme solarized

" Disable arrow keys
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

" matchit plugin - % for code blocks
set nocompatible
filetype plugin on
runtime macros/matchit.vim

" Cursor shapes (Mac)
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"au InsertLeave * hi Cursor guibg=red
"au InsertEnter * hi Cursor guibg=green

" Rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Airline - status bar
let g:airline_powerline_fonts = 1
set encoding=utf-8
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline 

" Custom mapping - fireplace
:map [e :%Eval <CR>

" Custom mapping - autocomplete stuff
"inoremap ( ()<Esc>i

" Markdown mode
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" JSX
let g:jsx_ext_required = 0
