" Activation/Desactivation de la fenêtre d'exploration des fichiers
map <F9> <Esc>:NERDTreetoogle<CR>

" Activation/Desactivation de la fenêtre TagList
map <F8> <Esc>:TlistToggle<CR>

" Activation de la completion Django
map <F10> <Esc>:call SetAutoDjangoCompletion!()<CR>

" Ouverture d'une définition de classe
map <F6> <Esc>:RopeGotoDefinition<CR>

" Renommage d'une classe ou variable avec Rope
map <F7> <Esc>:RopeRename<CR>

" Affichage de la liste des taches
map <C-t> <Plug>TaskList

" Affichage de l'historique des modifications
map <C-h> <Esc>:GundoToggle<CR>

" Execution de test unitaire
nmap <silent><Leader>tf <Esc>:pytest file<CR>
nmap <silent><Leader>tc <Esc>:pytest class<CR>
nmap <silent><Leader>tm <Esc>:pytest method<CR>

" Appel de la fonction d'activation/desactivation de la gestion de la souris
map <F4> <Esc>:call ToggleMouseActivation()<CR>

