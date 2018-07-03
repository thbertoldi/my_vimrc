"
"Pathogen
"
execute pathogen#infect()

syntax on
filetype plugin indent on

"
"Syntastic
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"
"Clang-complete
"

let g:clang_library_path='/usr/lib'
let g:clang_user_options = '-std=c++14'
let g:clang_complete_auto = 1

"
"MUcomplete
"

set noinfercase
set completeopt-=preview
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1
let g:jedi#popup_on_dot = 0

"
"Match It
"

runtime! macros/matchit.vim

"
"Airline
"

let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1

"
"Remaps
"

let mapleader=","
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" buffer
map <leader>t :enew<cr>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>
map <leader>cd :cd %:p:h<cr>:pwd<cr>
" Syntastic
nmap <leader>ne :lnext<CR>
nmap <leader>pe :lprev<CR>
map <leader>ce :SyntasticReset<CR>

"
" NERDTree
"

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"
"Themes
"

colorscheme elflord

"
"Tagbar
"
nmap <C-m> :TagbarToggle<CR>

"
"CtrlP
"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"
"Fonts
"

set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font\ 11

"
"Gitgutter
"
if exists('&signcolumn')  
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

"
"Ack/Ag
"

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

"
"Sets
"

set updatetime=100
set hidden
set autoread
set number "number on line
set cursorline "linha no cursor
set showmatch
