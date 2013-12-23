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

" Activation de la completion pour les fichiers python
au filetype set python omnifunc=pythoncomplete#Complete
" Activation de la complétion pour les fichiers javascript
au filetype set javascript omnifunc=javascriptcomplete#CompleteJS
" Activation de la complétion pour les fichiers HTML
au filetype html set omnifunc=htmlcomplete#CompleteTags
" Activation de la complétion pour les fichiers CSS
au filetype css set omnifunc=csscomplete#CompleteCSS

" Définition du type de complétion de SuperTab
let g:SuperTabDefaultCompletionType ="context"

" Activation de la visualisation de la documentation
set completeopt=menuone,longest,preview

" Activation de la completion pour Django
function! SetAutoDjangocompletion()
 let l:tmpPath   = split($PWD, '/')
 let l:djangoVar = tempPath[len(tempPatch)-1].'.settings'
 les $DJANGO_SETTINGS_MODULE=djangoVar
 echo 'Activation de la completion de Django avec : '.djangoVar
 return 1
endfunction

" Activation de la completion pour les librairies installées dans virtualenv
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0,project_base_dir)
    activate_this = os.path.join(project_base_dir,'bin/activate_this.py)
    execfile(activate_this,dict(__file__=activate))
EOF

" Activation des snippets Django pour les fichiers python et html
autocmd FileType python set ft=python.django
autocmd FileType html set ft=htmlpython.html

" Activation de la barre de statut de fugitive
set laststatut=2
set statutline=[%l,%v\ %P%M]\ %f %r%h%w\ (%{&ff})\ %{fugitive#statusline()}


