let s:BOLEOL=1

function! BOLEOL()
if (s:BOLEOL == 1)
:norm $
let s:BOLEOL = 0
else
:norm ^
let s:BOLEOL = 1
endif
endfun

nmap <C-G> :call BOLEOL()<cr>

" set cursor configuration
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

syntax enable
syntax on                       " turns syntax highlighting on


set nocompatible                " (cp) use Vim defaults (much better)
set showcmd                     " (sc) display an incomplete command in the lower right
"set mouse=a
set nowrap
set nocompatible
set backupdir=~/.tmp
set directory=~/.tmp
set wildmenu
set ruler
set number
set smarttab
set expandtab "turn tabs into whitespace
set tabstop=2 "set tab character to 4 characters
set showtabline=2
set autoindent
set smartindent
set shiftwidth=2 "indent width for autoindent
set fileformats=unix,dos " sets <LF> (unix) first, then tries <CR><LF> (dos) next
set path=$PWD/**
set backspace=2 " allows deletion of characters prior to insertion mode
" backspace will delete CRLF at beginning of line
" space key will wrap to next line at end of line
" left and right arrow will wrap to previous and next lines at end of line
" (in normal mode & insertion mode)
set whichwrap=b,s,<,>,[,]
"Have 3 lines of offset (or buffer) when scrolling
set scrolloff=3
set so=0 " allows buffer to scroll before reaching border
set sidescroll=10 " amount buffer is scrolled to when on a word outside of viewing range
"Enable indent folding
"set foldenable
"set fdm=indent
"set list " allows you to view hidden characters
"set listchars=tab:>>,trail:- " tab will show as >- and whitespace will show as -
"set listchars+=precedes:<       " (lcs) when 'nowrap', character to indicate that line continues off the page
"set listchars+=extends:>

" COLORS & HIGHLIGHTS *********************************************************
colorscheme jellybeans
" http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
" http://www.bjornenki.com/blog/gvim-colorscheme/bjornenki-colorscheme.vim
"    * can use hexidecimal values for gui (e.g. guibg=#000000)
"
" todo, error (defaults)
"
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #254bb8     #CEFFAB
" Yellow    #000000     #FFFFCB
" Blue      #00ff00     #FFFFCB
" Magenta   #FF73FD     #FF9CFE
" Cyan      #FFFFFF     #DFDFFE
" White     #EEEEEE     #FFFFFF

" gui / cterm font decorations (none,italic,bold,undercurl)
"hi Example guifg=NONE guibg=#ff0000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
highlight NonText ctermfg=7 guifg=gray
highlight StatusFileName cterm=italic ctermbg=black ctermfg=gray

" ********************************************************************************

" status message
set laststatus=2
set statusline =                         " clear out status line
set statusline+=%#StatusFileName#        " 'todo' colorscheme
set statusline+=[%Y]                     " file type
set statusline+=%r\                      " read only mode
set statusline+=%-10F                    " full file name
set statusline+=%*                       " default colorscheme
set statusline+=%=                       " right justify everything after this line
set statusline+=[%3c,%-3l\               " cursor column position
set statusline+=of\ %L\ lines\           " cursor line, total lines
set statusline+=(%p%%)]\ \ \             " percentage
set statusline+=[%{g:colors_name}\ ->\   " colorscheme
set statusline+=(%{&term})\              " terminal color setting name
set statusline+=%{&t_Co}\ Color\ Scheme] " color count

map <C-b> :tabp<CR>
map <C-n> :tabn<CR>
map <C-t> :tabnew
map <C-m> :NERDTreeToggle<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map , :ZoomWin<CR>
imap <C-n> <C-x><C-u>

autocmd BufEnter * lcd %:p:h
filetype plugin indent on
"Set space to toggle a fold
nnoremap <space> za


