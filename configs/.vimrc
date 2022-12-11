set number
set so=14
set numberwidth=1
set showcmd
set clipboard=unnamedplus
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set wildmenu
set tabstop=2
set hls is
set ic
set smartindent
set incsearch
set noshowmode
set nohlsearch
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set lazyredraw
syntax on
syntax enable
set t_Co=256
set cursorline
call plug#begin('~/.vim/plugged')

	"undotree
Plug 'mbbill/undotree'
	"lightline
Plug 'itchyny/lightline.vim'
	"markdown-preview.nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	"vim pencil, mejora la escritura en vim.
Plug 'reedes/vim-pencil'
	"Permite navegar entre pestañas de vim abiertas.
Plug 'christoomey/vim-tmux-navigator' 
	"Permite navegar mas facil en vim
Plug 'easymotion/vim-easymotion'
	"Gestor de archivos en vim
Plug 'scrooloose/nerdtree'
	" Temas
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-fugitive'
call plug#end()

	"lightline 
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

	"One half
"colorscheme onehalfdark
"let g:airline_theme='onehalfdark'

	"Dracula
"colorscheme dracula

	"gruvbox
let g:airline_theme='gruvbox'
let g:solarized_termcolors=256
colorscheme gruvbox
set background=dark
let g:gruvbox_italicize_strings=1

autocmd VimEnter * hi Normal ctermbg=none

	"easymotion
let mapleader=" "
nmap <leader>e <Plug>(easymotion-s2)

	"Mapeos de teclas.
nmap <leader>s :w<CR>
nmap <leader>q :q<CR>
nmap <leader><ESC> :q!<CR>
map <leader>r :!clear && g++ -std=c++11 -o .exe % && ./.exe<CR>
nmap <leader>nf :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeToggle<CR>
imap jj <ESC>
imap hh <LEFT>
imap ññ <RIGHT>
nmap ñ $
nmap ññ $a
imap ,, $\$<LEFT>
imap .. \<LEFT><RIGHT>
map <leader>vimrc :source ~/.vimrc<CR>
map <leader>c z=
nmap <leader>m :MarkdownPreview<CR>
nmap <leader>u :UndotreeToggle<CR>
"Fugitive
nmap <leader>gs :G<CR>
nmap <leader>gj :diffget //1<CR>
nmap <leader>gf :diffget //3<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gph :Gpush<CR>
nmap <leader>gph :Gpull<CR>



	"Pandoc
"nmap <leader>p :!pandoc -o %.pdf %

nmap <leader>p :!python3 %

	"Spell 
nmap <leader>z :setlocal spell spelllang=es_es,en_us<CR>
hi SpellBad cterm=underline ctermfg=203 
hi SpellLocal cterm=underline ctermfg=203
hi SpellRare cterm=underline ctermfg=203 
hi SpellCap cterm=underline ctermfg=203

 
	" Markdown Preview
	
"lo comienza automaticamente 
let g:mkdp_auto_start = 0

"Crea un servidor local conteniendo el documento.
let g:mkdp_open_to_the_world = 1 

"Especifica la ip para el servidor local.
let g:mkdp_open_ip = ''

"Utiliza un documento css para darle estilo al preview
let g:mkdp_markdown_css = '~/css/retro.css'

"Especifica el puerto para crear el servidor
let g:mkdp_port = '9090' 


	"Vim syntax highlighting 
		"Este plugin no se instala con Plug. Para su instalacion ver:
"https://github.com/bfrg/vim-cpp-modern
		
"Desactiva el plugin
let g:cpp_no_function_highlight = 0

" Activa el subrayado para los atributos de c++11
let g:cpp_member_attributes_highlight = 1

" Subraya las estructuras y las clases
let g:cpp_member_highlight = 1

" Agrega todas las palabras standar de c y c++
let g:cpp_simple_highlight = 1
