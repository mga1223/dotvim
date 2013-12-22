" Chargement de Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helpptags()
" Activation de l'indentation automatique
set autoindent
" Redefinition des tabulations
set expandtab
set shiftwitdth=4
set softtabstop=4
set tabstop=8
" Activation de la détection automatique dyu type de fichier
filetype on
filetype plugin indent on
" Longueur maximal des lignes
set textwidth=79

" Activation de la coloration syntaxique
syntax on

" Lecture des raccourcis des claviers généraux
execute 'source' . $HOME . '/.vim/shortkeys.vim'
