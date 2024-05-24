set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" user plugins (Optional)
Plugin 'vim-airline/vim-airline'

map <F2> :set nu!<CR>
imap <F2> <C-O>:set nu!<CR>
map <F3> :nohl<CR>
imap <F3> <C-O>:nohl<CR>
set pastetoggle=<F4>
nnoremap <F5> :set list!<CR>

"Ignore case in searches
set ignorecase

syntax on
colorscheme elflord
set autoindent

" Config how set list display white spaces
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Comment or uncomment current/selected lines.
map <silent> C :s/^/#/<CR>:nohlsearch<CR>
map <silent> U :s/^#/<CR>:nohlsearch<CR>
" Trim all tralling whitespaces
map <silent> W :s/^\s\+//e<CR>:nohlsearch<CR>
" Trim all tralling spaces (not tabs).
map <silent> S :s/^ \+//e<CR>:nohlsearch<CR>
" Append tab to the begin of each selected line, useful when wrapping blocks of code.
map <silent> T :s/^/\t/<CR>:nohlsearch<CR>

" 4 spaces tabs.
set tabstop=4

" Make backspace kill 4 spaces in one go.
set softtabstop=4

" Insert $tabstop number spaces instead of tab.
set expandtab

" make \d delete (for real, not cut)
nnoremap <leader>d "_d
vnoremap <leader>d "_d

set nocompatible
set bs=2

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
	\ if ! exists("g:leave_my_cursor_position_alone") |
	\     if line("'\"") > 0 && line ("'\"") <= line("$") |
	\         exe "normal g'\"" |
	\     endif |
	\ endif

set viminfo=\'100,\"1000,:100

set modeline

set foldlevelstart=20

" Do NOT copy to system clipboard.
:set clipboard=

" space bar as insert mode key, for keyboards without insert key.
:nnoremap <Space> i

" Enable mouse
set mouse=a

" Show line numbers
set number
