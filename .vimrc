set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'nanotech/jellybeans.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'bling/vim-bufferline'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'lilydjwg/colorizer'
Plugin 'octol/vim-cpp-enhanced-highlight'
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

call vundle#end()            " required
filetype plugin indent on    " required

let g:jsx_ext_required = 0
let g:airline_powerline_fonts = 1
let g:javascript_plugin_flow = 1
let g:deoplete#enable_at_startup = 1

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

if strftime("%H") < 20 && strftime("%H") > 8
  let g:airline_theme = 'cobalt2'
  color cake
  color autumnleaf
  set background=dark
  color gruvbox
  set background=light
  color kalisi
else
  color vertLaiton
  set background=light
  color calmar256-light
endif

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set encoding=utf-8
set tabstop=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set laststatus=2
set mouse=a
set listchars=tab:→\ ,trail:•,extends:»,precedes:«,eol:↩
hi NonText ctermfg=7
set nocindent
set foldmethod=indent
set foldnestmax=10
set foldlevel=2
set foldenable
set ignorecase

nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <esc>v<Up>
vmap <S-Up> <Up>
imap <S-Down> <esc>v<Down>
vmap <S-Down> <Down>
imap <S-Left> <esc>v<Left>
vmap <S-Left> <Left>
imap <S-Right> <esc>v<Right>
vmap <S-Right> <Right>
imap <s-End> <esc>v$<End>
vmap <s-End> $<End>
nmap <s-End> v$<End>
imap <s-Home> <esc>v0
vmap <s-Home> 0
nmap <s-Home> v0
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>
vnoremap <c-s> <Esc>:w<CR>
nmap <c-f> :noh<CR>
imap <c-f> <esc>:noh<cr>i
nmap . i.
nmap , i,
map q <Nop>
nmap <Backspace> i<Backspace>
vmap <Backspace> <Esc>d
nmap <Tab> i<Tab>
nmap <CR> i<CR>
nmap <c-l> :set list!<CR>
imap <c-l> <Esc>:set list!<CR>i
nmap <s-PageDown> <Nop>
imap <s-PageDown> <Nop>
vmap <s-PageDown> <Nop>
nmap <s-PageUp> <Nop>
imap <s-PageUp> <Nop>
vmap <s-PageUp> <Nop>
imap <c-g> <esc>:
nmap <c-g> :
imap <c-d> <esc>dd<up>ppA
nmap <c-d> dd<up>pp
nmap <space> i<space>
vmap < <gv
vmap > >gv
vmap <tab> >
vmap <s-tab> <
nnoremap ; :
vnoremap ; <esc>;
nmap <c-a> ggVG
nmap <PageDown> 10j
vmap <PageDown> 10j
imap <PageDown> <esc>10ji
nmap <PageUp> 10k
vmap <PageUp> 10k
imap <PageUp> <esc>10ki
nmap + <nop>
nmap - <nop>
vmap + <nop>
vmap - <nop>
imap <c-home> <esc>:bn!<cr>i
nmap <c-home> :bn!<cr>
imap <c-end> <esc>:bp!<cr>i
nmap <c-end> :bp!<cr>
nmap <c-w> <c-w><c-w>
imap <c-w> <esc><c-w>
imap <c-q> <esc>:bd<cr>
nmap <c-q> :bd<cr>
nmap <c-h> :%s/
imap <c-h> <esc>:%s/
imap <insert> <nop>
noremap yy "kyy
noremap YY "Kyy

inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
        \ "\<lt>C-n>" :
        \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
        \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
        \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

command -nargs=0 Quit :qa!

let g:NERDTreeWinSize=20
let NERDTreeShowHidden=1
map <C-\> :NERDTreeToggle<CR>
imap <C-\> <esc>:NERDTreeToggle<CR>a

filetype indent off
augroup Format-Options
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END

autocmd Filetype make setlocal nofoldenable
syntax on
