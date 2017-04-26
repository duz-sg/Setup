" ---------- DUZ's own settings
set number
set autoindent
set smartindent
" Prevent vi move single line comment to the beginning
filetype plugin indent on
syntax enable
set syn=perl

set backspace=2 " make backspace work like most other apps

set expandtab " use space instead of tab
set tabstop=4
set shiftwidth=4

set ignorecase
set smartcase
set incsearch
set hlsearch
set nowrap
set foldmethod=manual
set clipboard=unnamed
set mouse=a

" Tidy selected lines (or entire file) with _t:
nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <silent> _t :!perltidy -q<Enter>


"--------------------
"" Function: Open tag under cursor in new tab
" Source:   http://stackoverflow.com/questions/563616/vimctags-tips-and-tricks
" "--------------------
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

colorscheme wombat256i

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
