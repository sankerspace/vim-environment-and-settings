""############################################################################
""#############################VUNDLE#########################################
""[https://github.com/VundleVim/Vundle.vim#about]
""[git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim]

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've 	already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

""######MyPlugins

""Pluging for C++ CodeCompletion
Plugin 'Valloric/YouCompleteMe'
Plugin 'mushanyoung/vim-windflower'
Plugin 'scrooloose/nerdtree'
"" start :PluginInstall


""Plugin for markdown - editing README.MD
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}

" All of your Plugins must be added before the following line   !!!!!!!!!!!!!!!
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""############################################################################
" First of all, you want to enable exrc option. 
" This option forces Vim to source .vimrc file if it present in 
" working directory, thus providing a place to 
" store project-specific configuration.
set exrc

" Since Vim will source .vimrc from any directory you run Vim from, 
" this is a potential security hole; so, you should consider setting secure option.
set secure
""############################################################################
"PROJECT-SPECIFIC-OPTIONS
" After you managed to store Vim settings on a per-directory basis, 
" you should place all your project-specific settings in the .vimrc 
" file at top directory of your project.

"  indentation rules for your project
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set number

"keep my lines 110 chars at most
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
""Syntax Higlighting should be on
syntax on

color windflower
""############################################################################
"SETTING-PATH-VARIABLE
" Vim has a gf command (and related, <C-W><C-F> to open in new tab) which open 
" file whose name is under or after the cursor. 
" This feature is extremely useful for browsing header files.
" By default, Vim searches file in working directory. 
" However, most projects have separated directory for include files. 
" Thus, you should set Vim’s path option to contain a comma-separated list of 
" directories to look for the file.
" if there is such a path uncommend following line and adjust the path

" let &path.="src/include,/usr/include/AL,"

""############################################################################
""CLANGD-COMPLETER
""[https://clang.llvm.org/extra/clangd/Installation.html]
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
""############################################################################
""
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"


""############################################################################
"" INSTANT - MARKDOWN
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1
""############################################################################
