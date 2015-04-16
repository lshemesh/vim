execute pathogen#infect()
syntax enable
set mouse-=a
set nonumber
set nocompatible                " (cp) use Vim defaults (much better)
set showcmd                     " (sc) display an incomplete command in the lower right
set nowrap
set backupdir=~/.tmp
set directory=~/.tmp
set wildmenu
set ruler
set smarttab
set expandtab "turn tabs into whitespace
set tabstop=2 "set tab character to 4 characters
set showtabline=2
set autoindent
set smartindent
set shiftwidth=2 "indent width for autoindent
set softtabstop=2
set fileformats=unix,dos " sets <LF> (unix) first, then tries <CR><LF> (dos) next
set path=$PWD/**
set backspace=2 " allows deletion of characters prior to insertion mode
set whichwrap=b,s,<,>,[,]
set scrolloff=3
set so=0 " allows buffer to scroll before reaching border
set sidescroll=10 " amount buffer is scrolled to when on a word outside of viewing range
set cursorline
set t_Co=256
let g:NERDTreeDirArrows=0
scriptencoding utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set background=light
let g:solarized_termcolors=256
colorscheme solarized

filetype off

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
highlight NonText ctermfg=7 guifg=gray
highlight StatusFileName cterm=italic ctermbg=black ctermfg=gray

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
imap <C-n> <C-x><C-u>

autocmd BufEnter * lcd %:p:h
filetype plugin indent on
nnoremap <space> za

nnoremap <leader>el :ElmEvalLine<CR>
vnoremap <leader>es :<C-u>ElmEvalSelection<CR>
nnoremap <leader>ep :ElmPrintTypes<CR>
nnoremap <leader>em :ElmMakeCurrentFile<CR>

