if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'rust-lang/rust.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'crusoexia/vim-monokai'
Plug 't1mxg0d/vim-lucario'
Plug 'dracula/vim', {'as': 'dracula'}

call plug#end()

:set mouse=a
if has('mouse_sgr')
    set ttymouse=sgr
endif
:set bs=2
:set paste
:set number
:colorscheme monokai
set t_Co=256
:set colorcolumn=80
:highlight ColorColumn ctermbg=darkmagenta

:set noerrorbells visualbell t_vb=
:autocmd GUIEnter * set visualbell t_vb=

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*.class			     " Java

" by default, use 4 spaces for tabs
set tabstop=4
set shiftwidth=4
set expandtab

" for html/cpp/javascript files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype cpp setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab

:nmap <S-Enter> O<Esc>
:nmap <CR> o<Esc>


