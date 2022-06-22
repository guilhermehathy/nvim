set encoding=UTF-8
set number
set relativenumber
set smartcase
set incsearch
set ignorecase
set wildmenu
set title
set confirm
set cursorline
set ttimeoutlen=0
set clipboard+=unnamed  " use the clipboards of vim and win
set go+=a               " Visual selection automatically copied to the clipboard
set scrolloff=10


call plug#begin()

Plug 'voldikss/vim-floaterm'
Plug 'sbdchd/neoformat'
Plug 'ryanoasis/vim-devicons'
Plug 'ful1e5/onedark.nvim'
Plug 'lissaferreira/dalton-vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'gko/vim-coloresque'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'thaerkh/vim-indentguides'
Plug 'cohama/lexima.vim'
Plug 'airblade/vim-gitgutter'
Plug 'karoliskoncevicius/vim-sendtowindow'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'tpope/vim-repeat'
Plug 'pappasam/nvim-repl'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'preservim/nerdcommenter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'windwp/nvim-autopairs'
Plug 'AndrewRadev/tagalong.vim'
Plug 'easymotion/vim-easymotion' "SSw
Plug 'alvan/vim-closetag' 
Plug 'tpope/vim-surround'
Plug 'tanvirtin/monokai.nvim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()


" Autocomplete
let g:deoplete#enable_at_startup = 1
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_trim = 1


colorscheme monokai
set guifont=DroidSansMono\ Nerd\ Font:h11

" Repl Configuration to Python and R
let g:repl_split = 'right'
nnoremap <leader><leader>e :ReplToggle<CR>
nmap <C-l> <Plug>ReplSendLine
inoremap <C-l> <ESC><Plug>ReplSendLine<CR>
vmap <C-l> <Plug>ReplSendVisual
let g:repl_filetype_commands = {
      \ 'python': 'bpython -q',
      \ 'r': 'R'
      \ }


" Remap leader to space
let g:mapleader = "\<Space>"


inoremap jj <esc>

" Search files
nnoremap <C-p> :Files<Cr>
"Open Buffer
nnoremap <C-b> :Buffers<Cr>

"Alternar entre abas (buffers) com h e l"
nnoremap <C-b>h :bprevious<CR>
nnoremap <C-b>l :bnext<CR>


"Go Definition
nnoremap gd :LspDefinition<Cr>

" Create, open and Toggle terminal
nnoremap <C-t>n          :FloatermNew<Cr>
nnoremap <C-t>s          :FloatermNew --wintype=vsplit --width=0.4<Cr>
nnoremap <C-t>           :FloatermToggle<Cr>
tnoremap <C-t> <C-\><C-n>:FloatermToggle<Cr>

" Next and prev terminal
tnoremap <C-t><C-l>    <C-\><C-n>:FloatermNext<Cr>
tnoremap <C-t><C-h>    <C-\><C-n>:FloatermPrev<Cr>

command! -nargs=0 Prettier :CocCommand prettier.formatFile

nnoremap <C-n> :NERDTreeToggle<CR>


let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1

" Configurações do CoC.nvim

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Fim das configurações do CoC.nvim

" Configurações do Vim IndentGuides

let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" Fim das configurações do Vim IndentGuides
" " Configurações do lexima.vim

let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

" Fim das configurações do lexima.vim


"Alternar a posição de uma linha com SHIFT + seta para cima e SHIFT + seta para baixo"
nnoremap <silent> <s-Down> :m +1<CR>
nnoremap <silent> <s-Up> :m -2<CR>


" Remove arrows in normal and visual mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" Coment lines
nnoremap <C-c> <plug>NERDCommenterToggle
vnoremap <C-c> <plug>NERDCommenterToggle

" Split resize
nnoremap <leader>> 10<C-w>>
nnoremap <leader>< 10<C-w><


" Fastes scroll
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nmap <leader>s <Plug>(easymotion-s2)


" Close tags
let g:closetag_filetypes = 'html,xhtml,phtml,javascript'
let g:closetag_enable_react_fragment = 1


highlight Normal     ctermbg=NONE guibg=NONE

