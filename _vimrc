
set nocompatible
set paste
set path=.,,

" Search.
set incsearch
set ignorecase
set hlsearch

" Text.
set ch=1
set scr=10
set nowrap
set nolbr

" Width/Height.
set co=100
set lines=30

" Draw.
set cursorline
set nolz
set number

" Inkpot, no bold, gvim.
set background=dark
set laststatus=2
set statusline=%<%f\ %=\:\b%n%y%m%r%w\ %l,%c%V\ %P

syntax enable
syntax reset

" General colors:
hi Normal         gui=NONE   guifg=#cfbfad   guibg=#1e1e2e
hi CursorLine     gui=NONE   guifg=NONE      guibg=#2e2e3e

hi IncSearch      gui=NONE   guifg=#303030   guibg=#cd8b60
hi Search         gui=NONE   guifg=#303030   guibg=#ad7b57
hi ErrorMsg       gui=NONE   guifg=#ffffff   guibg=#ce4e4e
hi WarningMsg     gui=NONE   guifg=#ffffff   guibg=#ce8e4e
hi ModeMsg        gui=NONE   guifg=#7e7eae   guibg=NONE
hi MoreMsg        gui=NONE   guifg=#7e7eae   guibg=NONE
hi Question       gui=NONE   guifg=#ffcd00   guibg=NONE

hi StatusLine     gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e
hi User1          gui=NONE   guifg=#00ff8b   guibg=#3e3e5e
hi User2          gui=NONE   guifg=#7070a0   guibg=#3e3e5e
hi StatusLineNC   gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e
hi VertSplit      gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e
hi WildMenu       gui=NONE   guifg=#eeeeee   guibg=#6e6eaf

hi Cursor         gui=NONE   guifg=#404040   guibg=#8b8bff
hi lCursor        gui=NONE   guifg=#404040   guibg=#8fff8b
hi CursorIM       gui=NONE   guifg=#404040   guibg=#8b8bff

hi Folded         gui=NONE   guifg=#cfcfcd   guibg=#4b208f
hi FoldColumn     gui=NONE   guifg=#8b8bcd   guibg=#2e2e2e

hi Directory      gui=NONE   guifg=#00ff8b   guibg=NONE
hi LineNr         gui=NONE   guifg=#8b8bcd   guibg=#2e2e2e
hi NonText        gui=NONE   guifg=#8b8bcd   guibg=NONE
hi SpecialKey     gui=NONE   guifg=#ab60ed   guibg=NONE
hi Title          gui=NONE   guifg=#af4f4b   guibg=NONE
hi Visual         gui=NONE   guifg=#eeeeee   guibg=#4e4e8f

" languages...
hi Comment        gui=NONE   guifg=#cd8b00   guibg=NONE
hi Constant       gui=NONE   guifg=#ffcd8b   guibg=NONE
hi String         gui=NONE   guifg=#ffcd8b   guibg=#404040
hi Error          gui=NONE   guifg=#ffffff   guibg=#6e2e2e
hi Identifier     gui=NONE   guifg=#ff8bff   guibg=NONE
hi Ignore         gui=NONE
hi Number         gui=NONE   guifg=#f0ad6d   guibg=NONE
hi PreProc        gui=NONE   guifg=#409090   guibg=NONE
hi Special        gui=NONE   guifg=#c080d0   guibg=NONE
hi SpecialChar    gui=NONE   guifg=#c080d0   guibg=#404040
hi Statement      gui=NONE   guifg=#808bed   guibg=NONE
hi Todo           gui=NONE   guifg=#303030   guibg=#d0a060
hi Type           gui=NONE   guifg=#ff8bff   guibg=NONE
hi Underlined     gui=NONE   guifg=#df9f2d   guibg=NONE

" autocomplete...
if v:version >= 700
    hi Pmenu      gui=NONE   guifg=#eeeeee   guibg=#4e4e8f
    hi PmenuSel   gui=NONE   guifg=#eeeeee   guibg=#2e2e3f
    hi PmenuSbar  gui=NONE   guifg=#eeeeee   guibg=#6e6eaf
    hi PmenuThumb gui=NONE   guifg=#eeeeee   guibg=#6e6eaf

    hi MatchParen gui=NONE   guifg=#cfbfad   guibg=#4e4e8f
endif

" Term.
set icon
set ttyfast
set title
set titlelen=80
set history=400
set su=.bak,~,.o,.h,.info,.swp,.obj,.db,.tmp
set shell=cmd.exe

" I/O.
set mouse=a
set nomousehide

" Debug.
set noterse
set ruler
set showcmd
set showmatch
set showmode

set noerrorbells
set novisualbell

" Edit.
set selection=exclusive
set selectmode=mouse,key
set undolevels=2500

" Autocompletion with preview.
set completeopt=preview

" Tabs.
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set noautoindent
set expandtab
set lisp

" File.
set fileformat=dos
set fileformats=dos,unix,mac
set nobackup
set noswapfile

" Win32.
behave mswin
source $VIMRUNTIME/mswin.vim

" Enable plugins.
filetype plugin on
filetype indent on

" Keys.
set hid

map <C-P> :bp!<CR>
map <C-N> :bn!<CR>
map <C-PAGEUP> :bp!<CR>
map <C-PAGEDOWN> :bn!<CR>

map <C-D> :bdelete<CR>
map <C-T> :badd new<CR>

" Open current folder (file you are editing) in buffer.
map <C-O> :exe 'e ' . expand('%:p:h')<CR>

" Show the buffer list.
map <C-S> :buffers<CR>

