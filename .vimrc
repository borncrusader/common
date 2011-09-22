" compatibility with vi
set nocp
set bg=dark

set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set hlsearch
set keywordprg=:help
set nowrap
set sidescroll=1
set term=xterm
set laststatus=2

"for preview window height - eg. quickfix window
set previewheight=10
set ruler
set incsearch
set showcmd
set cindent
set iskeyword+=_,$,@,%,#,'

syntax enable

filetype plugin indent on

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=1
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
"let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

"pydiction
let g:pydiction_location = '/home/sanantha/.vim/pydiction/complete-dict'

"SuperTab
let g:SuperTabMappingForward = '<c-p>'
let g:SuperTabMappingBackward = '<c-n>'

"Generate helptags
com HT :helptags ~/.vim/doc

if has("gui_running")
    colorscheme slate
endif

cs add ~/Dropbox/monk/def/cscope.out
