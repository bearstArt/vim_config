" Отключение совместимости с vi для использования расширенных возможностей Vim
set nocompatible

" Отключение автоопределения типов файлов (будет включено позже)
filetype off

" Инициализация системы управления плагинами vim-plug
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'benmills/vimux'
Plug 'chrisbra/NrrwRgn'
Plug 'chriskempson/base16-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'direnv/direnv.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'
Plug 'evanleck/vim-svelte'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godlygeek/tabular'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'itchyny/lightline.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/goyo.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vader.vim'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-sneak'
Plug 'kchmck/vim-coffee-script'
Plug 'kien/ctrlp.vim'
Plug 'kshenoy/vim-signature'
Plug 'low-ghost/nerdtree-fugitive'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'nvie/vim-flake8'
Plug 'nvim-telescope/telescope.nvim', { 'branch' : '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'pangloss/vim-javascript'
Plug 'pearofducks/ansible-vim'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'pineapplegiant/spaceduck', { 'branch':'main' }
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'puremourning/vimspector'
Plug 'rebelot/kanagawa.nvim'
Plug 'rhysd/vim-grammarous'
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/everforest'
Plug 'sbdchd/neoformat'
Plug 'stephpy/vim-yaml'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-python/python-syntax'
Plug 'vim-scripts/SyntaxRange'
Plug 'vim-scripts/Vimchant'
Plug 'vim-scripts/YankRing.vim'
Plug 'vim-test/vim-test'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'yggdroot/indentline'
Plug 'altercation/vim-colors-solarized'
Plug 'benekastah/neomake'
Plug 'honza/vim-snippets'
Plug 'liuchengxu/vista.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mbbill/undotree'
Plug 'preservim/tagbar'
Plug 'tacahiroy/ctrlp-funky'
Plug 'ternjs/tern_for_vim', {'do': 'yarn install'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'craftzdog/solarized-osaka.nvim'
Plug 'junegunn/seoul256.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'sheerun/vim-polyglot'
Plug 'sho-87/kanagawa-paper.nvim'

" Plug 'scrooloose/nerdtree-project-plugin'
" Plug 'SirVer/ultisnips'
" Plug 'maralla/completor.vim', { 'do':'make js' }
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }


" Завершение инициализации плагинов
call plug#end()

" Автоматическая установка и обновление плагинов при запуске
" autocmd VimEnter * if empty(filter(values(g:plugs), '!isdirectory(v:val.dir)')) | PlugUpdate --sync | source $MYVIMRC | endif


" Включение типов файлов и автоопределения отступов
filetype plugin indent on

inoremap ( ()<Left>
inoremap " ""<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap <C-v> <F10><C-r>+<F10>


" --- Основные настройки ---
set number                      " Отображение номеров строк
set mouse=a                     " Поддержка мыши
set clipboard=unnamed           " Использование системного буфера обмена
set fileencoding=utf-8          " Кодировка файлов UTF-8
set textwidth=80                " Ограничение ширины текста
set colorcolumn=80              " Маркер длины строки на 80 символах
set scrolloff=8                 " Минимальное количество строк над и под курсором
set updatetime=300              " Время обновления для некоторых плагинов
set signcolumn=yes              " Отображение столбца знаков
set expandtab                   " Преобразование табуляции в пробелы
set shiftwidth=4                " Ширина отступа
set tabstop=4                   " Ширина табуляции
set hlsearch                    " Подсветка результатов поиска
set ignorecase                  " Игнорирование регистра при поиске
set incsearch                   " Инкрементный поиск
set smartcase                   " Умная чувствительность к регистру
set lazyredraw                  " Не перерисовывать экран во время макросов и скриптов
set linebreak                   " Перенос строк без разрыва слов
set wrap                        " Перенос строк
set sidescrolloff=5             " Количество колонок контекста слева и справа от курсора
set autoread                    " Автоматическое чтение файлов, изменённых извне
set hidden                      " Скрытие буферов в фоновом режиме
set history=1000                " Увеличение размера истории
" set spell                       " Включение проверки орфографии
set wildignore+=.pyc,.swp       " Игнорирование этих файлов в wildmenu

" Настройка шрифта FreeMono для Gvim
" set guifont=FreeMono\ 12


" Установите прозрачный фон
" highlight Normal ctermfg=252 ctermbg=234 guifg=#a3c2c2 guibg=#0a3333

" highlight Normal ctermbg=234 guibg=#0a3333
" highlight NonText ctermbg=none "guibg=none
" highlight LineNr ctermbg=none "guibg=none
" highlight Folded ctermbg=none "guibg=none
" highlight EndOfBuffer ctermbg=none "guibg=none
" highlight SignColumn ctermbg=none "guibg=none


" colo blue
" colo darkblue
" colo default
" colo delek
" colo desert
" colo elflord
" colo evening
" colo industry
" colo koehler
" colo morning
" colo murphy
" colo pablo
" colo peachpuff
" colo ron
" colo shine
colo slate		"
" colo torte		"
" colo zellner

" set wildmenu                			" Меню автодополнения командной строки
set tabpagemax=50           			" Максимальное количество вкладок



" set background=dark				" Цветовая схема для тёмного фона
" colorscheme everforest			" Цветовая схема Everforests
" colorscheme gruvbox				" Цветовая схема Gruvbox
" colorscheme kanagawa				" Цветовая схема Kanagawa
" colorscheme spaceduck				" Цветовая схема Spaceduck
" colorscheme catppuccin-mocha 			" catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

	"Kanagawa
" colorscheme kanagawa			" Цветовые схемы kanagawa
" colorscheme kanagawa-wave		" Цветовые схемы kanagawa-wave
" colorscheme kanagawa-lotus		" Цветовые схемы kanagawa-lotus
" colorscheme kanagawa-dragon		" Цветовые схемы kanagawa-dragon

	" Base16
" colorscheme base16-atelier-heath-light	" Цветовые схемы base16-atelier-heath-light
" colorscheme base16-phd			" Цветовые схемы base16-phd
" colorscheme base16-harmonic-light		" Цветовые схемы base16-harmonic-light
" colorscheme base16-classic-dark		" Цветовые схемы base16-classic-dark
" colorscheme base16-tube			" Цветовые схемы base16-tube
" colorscheme base16-google-light		" Цветовые схемы base16-google-light
" colorscheme base16-material-vivid		" Цветовые схемы base16-material-vivid
" colorscheme base16-black-metal-mayhem		" Цветовые схемы base16-black-metal-mayhem
" colorscheme base16-dracula			" Цветовые схемы base16-dracula
" colorscheme base16-darktooth			" Цветовые схемы base16-darktooth
" colorscheme base16-fruit-soda			" Цветовые схемы base16-fruit-soda
" colorscheme base16-solarflare			" Цветовые схемы base16-solarflare
" colorscheme base16-atelier-cave-light		" Цветовые схемы base16-atelier-cave-light
" colorscheme base16-horizon-terminal-dark	" Цветовые схемы base16-horizon-terminal-dark
" colorscheme base16-horizon-dark		" Цветовые схемы base16-horizon-dark
" colorscheme base16-papercolor-dark		" Цветовые схемы base16-papercolor-dark
" colorscheme base16-solarized-light		" Цветовые схемы base16-solarized-light
" colorscheme base16-atelier-forest-light	" Цветовые схемы base16-atelier-forest-light
" colorscheme base16-black-metal-burzum		" Цветовые схемы base16-black-metal-burzum
" colorscheme base16-gruvbox-dark-pale		" Цветовые схемы base16-gruvbox-dark-pale
" colorscheme base16-black-metal-khold		" Цветовые схемы base16-black-metal-khold
" colorscheme base16-ashes			" Цветовые схемы base16-ashes
" colorscheme base16-twilight			" Цветовые схемы base16-twilight
" colorscheme base16-marrakesh			" Цветовые схемы base16-marrakesh
" colorscheme base16-brewer			" Цветовые схемы base16-brewer
" colorscheme base16-material-lighter		" Цветовые схемы base16-material-lighter
" colorscheme base16-onedark			" Цветовые схемы base16-onedark
" colorscheme base16-greenscreen		" Цветовые схемы base16-greenscreen
" colorscheme base16-atelier-lakeside		" Цветовые схемы base16-atelier-lakeside
" colorscheme base16-grayscale-dark		" Цветовые схемы base16-grayscale-dark
" colorscheme base16-atelier-heath		" Цветовые схемы base16-atelier-heath
" colorscheme base16-pop			" Цветовые схемы base16-pop
" colorscheme base16-eighties			" Цветовые схемы base16-eighties
" colorscheme base16-black-metal-immortal	" Цветовые схемы base16-black-metal-immortal
" colorscheme base16-black-metal-bathory	" Цветовые схемы base16-black-metal-bathory
" colorscheme base16-brogrammer			" Цветовые схемы base16-brogrammer
" colorscheme base16-decaf			" Цветовые схемы base16-decaf
" colorscheme base16-gigavolt			" Цветовые схемы base16-gigavolt
" colorscheme base16-unikitty-dark		" Цветовые схемы base16-unikitty-dark
" colorscheme base16-black-metal-nile		" Цветовые схемы base16-black-metal-nile
" colorscheme base16-shapeshifter		" Цветовые схемы base16-shapeshifter
" colorscheme base16-macintosh			" Цветовые схемы base16-macintosh
" colorscheme base16-atelier-lakeside-light	" Цветовые схемы base16-atelier-lakeside-light
" colorscheme base16-gruvbox-light-hard		" Цветовые схемы base16-gruvbox-light-hard
" colorscheme base16-one-light			" Цветовые схемы base16-one-light
" colorscheme base16-black-metal-gorgoroth	" Цветовые схемы base16-black-metal-gorgoroth
" colorscheme base16-summerfruit-light		" Цветовые схемы base16-summerfruit-light
" colorscheme base16-horizon-light		" Цветовые схемы base16-horizon-light
" colorscheme base16-gruvbox-light-soft		" Цветовые схемы base16-gruvbox-light-soft
" colorscheme base16-pico			" Цветовые схемы base16-pico
" colorscheme base16-harmonic-dark		" Цветовые схемы base16-harmonic-dark
" colorscheme base16-atelier-savanna-light	" Цветовые схемы base16-atelier-savanna-light
" colorscheme base16-hopscotch			" Цветовые схемы base16-hopscotch
" colorscheme base16-atelier-forest		" Цветовые схемы base16-atelier-forest
" colorscheme base16-materia			" Цветовые схемы base16-materia
" colorscheme base16-cupcake			" Цветовые схемы base16-cupcake
" colorscheme base16-atelier-cave		" Цветовые схемы base16-atelier-cave
" colorscheme base16-apathy			" Цветовые схемы base16-apathy
" colorscheme base16-framer			" Цветовые схемы base16-framer
" colorscheme base16-black-metal-dark-funeral	" Цветовые схемы base16-black-metal-dark-funeral
" colorscheme base16-default-light		" Цветовые схемы base16-default-light
" colorscheme base16-unikitty-light		" Цветовые схемы base16-unikitty-light
" colorscheme base16-google-dark		" Цветовые схемы base16-google-dark
" colorscheme base16-isotope			" Цветовые схемы base16-isotope
" colorscheme base16-github			" Цветовые схемы base16-github
" colorscheme base16-sandcastle			" Цветовые схемы base16-sandcastle
" colorscheme base16-atelier-sulphurpool-light	" Цветовые схемы base16-atelier-sulphurpool-light
" colorscheme base16-gruvbox-dark-medium	" Цветовые схемы base16-gruvbox-dark-medium
" colorscheme base16-ia-dark			" Цветовые схемы base16-ia-dark
" colorscheme base16-horizon-terminal-light	" Цветовые схемы base16-horizon-terminal-light
" colorscheme base16-embers			" Цветовые схемы base16-embers
" colorscheme base16-brushtrees-dark		" Цветовые схемы base16-brushtrees-dark
" colorscheme base16-irblack			" Цветовые схемы base16-irblack
" colorscheme base16-black-metal		" Цветовые схемы base16-black-metal
" colorscheme base16-heetch			" Цветовые схемы base16-heetch
" colorscheme base16-oceanicnext		" Цветовые схемы base16-oceanicnext
" colorscheme base16-black-metal-marduk		" Цветовые схемы base16-black-metal-marduk
" colorscheme base16-monokai			" Цветовые схемы base16-monokai
" colorscheme base16-railscasts			" Цветовые схемы base16-railscasts
" colorscheme base16-material-darker		" Цветовые схемы base16-material-darker
" colorscheme base16-paraiso			" Цветовые схемы base16-paraiso
" colorscheme base16-spacemacs			" Цветовые схемы base16-spacemacs
" colorscheme base16-synth-midnight-dark	" Цветовые схемы base16-synth-midnight-dark
" colorscheme base16-mexico-light		" Цветовые схемы base16-mexico-light
" colorscheme base16-cupertino			" Цветовые схемы base16-cupertino
" colorscheme base16-atelier-dune-light		" Цветовые схемы base16-atelier-dune-light
" colorscheme base16-atelier-plateau		" Цветовые схемы base16-atelier-plateau
" colorscheme base16-tomorrow-night		" Цветовые схемы base16-tomorrow-night
" colorscheme base16-ia-light			" Цветовые схемы base16-ia-light
" colorscheme base16-flat			" Цветовые схемы base16-flat
" colorscheme base16-atelier-sulphurpool	" Цветовые схемы base16-atelier-sulphurpool
" colorscheme base16-zenburn			" Цветовые схемы base16-zenburn
" colorscheme base16-mellow-purple		" Цветовые схемы base16-mellow-purple
" colorscheme base16-3024			" Цветовые схемы base16-3024
" colorscheme base16-xcode-dusk			" Цветовые схемы base16-xcode-dusk
" colorscheme base16-gruvbox-dark-soft		" Цветовые схемы base16-gruvbox-dark-soft
" colorscheme base16-atelier-seaside		" Цветовые схемы base16-atelier-seaside
" colorscheme base16-brushtrees			" Цветовые схемы base16-brushtrees
" colorscheme base16-material			" Цветовые схемы base16-material
" colorscheme base16-atelier-estuary		" Цветовые схемы base16-atelier-estuary
" colorscheme base16-bright			" Цветовые схемы base16-bright
" colorscheme base16-circus			" Цветовые схемы base16-circus
" colorscheme base16-gruvbox-dark-hard		" Цветовые схемы base16-gruvbox-dark-hard
" colorscheme base16-papercolor-light		" Цветовые схемы base16-papercolor-light
" colorscheme base16-black-metal-venom		" Цветовые схемы base16-black-metal-venom
" colorscheme base16-edge-light			" Цветовые схемы base16-edge-light
" colorscheme base16-codeschool			" Цветовые схемы base16-codeschool
" colorscheme base16-atelier-plateau-light	" Цветовые схемы base16-atelier-plateau-light
" colorscheme base16-woodland			" Цветовые схемы base16-woodland
" colorscheme base16-espresso			" Цветовые схемы base16-espresso
" colorscheme base16-heetch-light		" Цветовые схемы base16-heetch-light
" colorscheme base16-tomorrow			" Цветовые схемы base16-tomorrow
" colorscheme base16-mocha			" Цветовые схемы base16-mocha
" colorscheme base16-material-palenight		" Цветовые схемы base16-material-palenight
" colorscheme base16-helios			" Цветовые схемы base16-helios
" colorscheme base16-seti			" Цветовые схемы base16-seti
" colorscheme base16-solarized-dark		" Цветовые схемы base16-solarized-dark
" colorscheme base16-chalk			" Цветовые схемы base16-chalk
" colorscheme base16-edge-dark			" Цветовые схемы base16-edge-dark
" colorscheme base16-tomorrow-night-eighties	" Цветовые схемы base16-tomorrow-night-eighties
" colorscheme base16-summerfruit-dark		" Цветовые схемы base16-summerfruit-dark
" colorscheme base16-default-dark		" Цветовые схемы base16-default-dark
" colorscheme base16-porple			" Цветовые схемы base16-porple
" colorscheme base16-atlas			" Цветовые схемы base16-atlas
" colorscheme base16-bespin			" Цветовые схемы base16-bespin
" colorscheme base16-gruvbox-light-medium	" Цветовые схемы base16-gruvbox-light-medium
" colorscheme base16-atelier-dune		" Цветовые схемы base16-atelier-dune
" colorscheme base16-atelier-savanna		" Цветовые схемы base16-atelier-savanna
" colorscheme base16-nord			" Цветовые схемы base16-nord
" colorscheme base16-grayscale-light		" Цветовые схемы base16-grayscale-light
" colorscheme base16-classic-light		" Цветовые схемы base16-classic-light
" colorscheme base16-outrun-dark		" Цветовые схемы base16-outrun-dark
" colorscheme base16-atelier-estuary-light	" Цветовые схемы base16-atelier-estuary-light
" colorscheme base16-nova			" Цветовые схемы base16-nova
" colorscheme base16-rebecca			" Цветовые схемы base16-rebecca
" colorscheme base16-icy			" Цветовые схемы base16-icy
" colorscheme base16-ocean			" Цветовые схемы base16-ocean
" colorscheme base16-snazzy			" Цветовые схемы base16-snazzy
" colorscheme base16-atelier-seaside-light	" Цветовые схемы base16-atelier-seaside-light


" --- Настройки для копирования ---
map <C-x> :!pbcopy<CR>         	 		" Копирование в системный буфер обмена в визуальном режиме
vmap <C-c> :w !pbcopy<CR><CR>    		" Копирование в системный буфер обмена в нормальном режиме

" --- Настройки для Python ---
autocmd filetype python nnoremap <F4> :w <bar> exec '!python '.shellescape('%')<CR>  " Запуск Python файла по F4
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>  " Запуск C файла по F4
autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>  " Запуск C++ файла по F4

" --- Параметры резервного копирования и временных файлов ---
set backup                     " Включение резервного копирования файлов
set writebackup                " Запись резервного файла перед перезаписью
set undofile                   " Включение сохранения истории изменений

" --- Настройки отображения ---
set laststatus=2               " Всегда отображать строку состояния
set foldenable                 " Включение сворачивания кода
set foldlevel=2                " Начальный уровень сворачивания
set statusline+=%F             " Отображение полного пути к файлу в строке состояния

" --- Директории для резервных копий и временных файлов ---
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Создание директорий, если они не существуют
if !isdirectory($HOME . '/.vim/backup')
  call mkdir($HOME . '/.vim/backup', 'p')
endif
if !isdirectory($HOME . '/.vim/swap')
  call mkdir($HOME . '/.vim/swap', 'p')
endif
if !isdirectory($HOME . '/.vim/undo')
  call mkdir($HOME . '/.vim/undo', 'p')
endif

" --- Настройки для плагинов ---
" Настройка Vim-Airline
let g:airline#extensions#tabline#enabled = 1   " Включение табов
let g:airline_powerline_fonts = 1              " Включение поддержки powerline шрифтов
" let g:airline_theme = 'gruvbox'                " Установка темы для airline

" Настройка NERDTree
let NERDTreeShowHidden=0                        " Показ скрытых файлов
map <C-n> :NERDTreeToggle<CR>                   " Горячая клавиша для открытия/закрытия NERDTree

 " Автооткрытие NERDTree при запуске Vim без файлов
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Настройка vim-fugitive и vim-rhubarb
nmap <leader>gs :Git<CR>                       " Открытие Git status по комбинации leader+gs
nmap <leader>gb :Git blame<CR>                 " Открытие Git blame по комбинации leader+gb

" Настройка fzf
let g:fzf_layout = { 'down': '40%' }            " Открытие fzf на 40% от нижней части экрана
nnoremap <C-p> :Files<CR>                       " Открытие fzf поиска файлов по C-p

" Настройка vim-easy-align
xmap ga <Plug>(EasyAlign)                       " Горячая клавиша для выравнивания в визуальном режиме
nmap ga <Plug>(EasyAlign)                       " Горячая клавиша для выравнивания в нормальном режиме

" Настройка vim-devicons
let g:webdevicons_enable = 1                   " Включение иконок для файлов

" Настройка для Splitjoin
nmap gS :SplitjoinJoin<CR>                      " Объединение строк
nmap gJ :SplitjoinSplit<CR>                     " Разделение строки

" Настройки для coc.nvim
let g:coc_global_extensions = ['coc-python', 'coc-json', 'coc-html', 'coc-css']  " Установка расширений для coc

" Настройки для UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"            " Горячая клавиша для расширения сниппетов
let g:UltiSnipsJumpForwardTrigger="<c-b>"       " Горячая клавиша для перехода вперёд в сниппете
let g:UltiSnipsJumpBackwardTrigger="<c-z>"      " Горячая клавиша для перехода назад в сниппете

" Настройка для vim-flake8
let g:flake8_show_in_error_list = 1             " Показ ошибок flake8 в списке ошибок

" Настройка vim-markdown
let g:vim_markdown_folding_disabled = 1         " Отключение сворачивания в markdown

" Настройка для Python-Syntax
let python_highlight_all=1                      " Включение всех улучшений подсветки синтаксиса для Python

" Настройки для контекстного меню
function! ContextMenu()
  let l:items = [
        \ {'text': 'Копировать', 'action': 'normal! "+y'},
        \ {'text': 'Вставить', 'action': 'normal! "+gP'},
        \ {'text': 'Поиск', 'action': 'call fzf#run(fzf#wrap({"source": "rg --files"}))'},
        \ {'text': 'Сохранить', 'action': 'write'},
        \ {'text': 'Закрыть', 'action': 'quit'}
        \ ]
  call popup_menu(l:items, {'line': 'cursor+1', 'col': 'cursor', 'filter': 'popup_filter'})
endfunction

" Назначение функции контекстного меню на правую кнопку мыши
nnoremap <RightMouse> :call ContextMenu()<CR>
vnoremap <RightMouse> :call ContextMenu()<CR>

" Фильтр для закрытия меню по нажатию Esc
function! PopupFilter(id, key)
  if a:key == "\<Esc>"
    call popup_close(a:id)
    return 0
  endif
  return a:key
endfunction

" Настройки для fzf
let g:fzf_layout = {'down': '40%'}
nnoremap <C-p> :Files<CR>


" Создание пользовательской команды : для открытия botright терминала
command! Bt botright terminal 

" Создание пользовательской команды : для открытия NERDTree
command! Nt NERDTree

" Создание пользовательской команды : для открытия botright терминала
command! Q q 



function! Show256Colors()
    for i in range(0, 255)
        exec 'hi Color' . i 'ctermfg=' . i 'ctermbg=NONE guifg=#000000'
        echohl Color'. i | echomsg printf('%3d: ', i) | echohl NONE
    endfor
endfunction

command! ShowColors call Show256Colors()

