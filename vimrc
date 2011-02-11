runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_append_all_bundles()
  call pathogen#helptags()
endif

syntax on
filetype plugin indent on

augroup vimrc
  autocmd!
  autocmd GuiEnter * set guifont=Monaco:h16 guioptions-=T columns=120 lines=70 number
augroup END

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

