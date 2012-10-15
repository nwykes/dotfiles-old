let mapleader = ","

set nocompatible
set encoding=utf-8
set hidden
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

if filereadable(expand("~/.vimrc.bundles.local"))
    source ~/.vimrc.bundles.local
endif

filetype plugin indent on

syntax on
set synmaxcol=2048                " Don't syntax highlight super-long lines (for performance)

set autoindent                    " automatically indent lines and try to do it intelligently
set smartindent
set backspace=indent,eol,start    " backspace behaves 'normally'

" set softtabstop=2
set smartindent
set shiftwidth=2                  " [2]
set tabstop=2                     " tab is 2 spaces [2]
set expandtab                     " use spaces

set textwidth=0
set nolinebreak
set nowrap

set virtualedit=all               " Allow the cursor to go in to 'invalid' places

set hlsearch                      " highlight search terms
set incsearch                     " search incrementally
set ignorecase                    " ignore case in searches...
set smartcase                     " ...but not really. Case sensitive if capitals are included.
set wrapscan                      " Set the search scan to wrap around the file

nmap <silent> <Leader>/ :nohlsearch<CR>  " Clear the find buffer

set t_Co=256
set background=dark
colorscheme Tomorrow-Night

let g:Powerline_symbols = 'fancy'

set laststatus=2                  " always display a status line

set number                        " show line numbers
set numberwidth=5
set ruler                         " display coordinates in status bar
set showcmd                       " display unfinished commands
set showmatch                     " show matching bracket (briefly jump)
set showmode                      " display the current mode in the status bar
set title                         " show file in titlebar
set scrolloff=3                   " When the page starts to scroll, keep the cursor 3 lines from top/bottom
set cmdheight=2                   " Make command line two lines high

" Use the same symbols as TextMate for tabstops and EOLs
" Show Invisibles (http://vimcasts.org/episodes/show-invisibles/) 
set list

set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the
                                  " right of the screen
set listchars+=precedes:<         


highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.swp,*.bak,*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Quickly edit/reload the vimrc file
" http://www.derekwyatt.org/vim/the-vimrc-file/my-vimrc-file/
nmap <silent> <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" NERDTree
nmap <leader>n :NERDTreeTabsToggle<CR>
let NERDTreeWinSize = 50
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore=['^bin$', '^tmp$', '^log$']
let nerdtree_tabs_open_on_gui_startup = 0
autocmd FileType nerdtree setlocal norelativenumber

" format the entire file
nmap <leader>fef ggVG=

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>

" Maps Alt-[s.v] to horizontal and vertical split respectively
map <silent> <A-s> :split<CR>
map <silent> <A-v> :vsplit<CR>

" Maps Alt-[n,p] for moving next and previous window respectively
map <silent> <A-n> <C-w><C-w>
map <silent> <A-p> <C-w><S-w>

nnoremap ;; : " ?

nmap <Leader>l :set list!<CR>               " Shortcut to rapidly toggle invisibles (`set list`)

" sudo save file
cmap w!! w !sudo tee % >/dev/null

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
	source ~/.vimrc.local
endif
