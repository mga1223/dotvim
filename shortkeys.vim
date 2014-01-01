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

" Appel de la fonction de nettoyage d'un fichier (enlève les ^M parasites et
" les tabulations
map <F3> <Esc>:call CleanCode()<CR>
imap <F3> <Esc>:call CleanCode()<CR>i

" Amélioration de la recherche avant et arrière avec surlignement du pattern
map * <Esc>:exe '2match Search /' . expand('<cWORD>') . '/'<CR><Esc>:exe '/' . expand('<cWORD>') . '/'<CR>
map ù <Esc>:exe '2match Search /' . expand('<cWORD>') . '/'<CR><Esc>:exe '/' . expand('<cWORD>') . '?'<CR>

" Recherche dans http://docs.djangoproject.com de l'aide sur le mot se
" trouvant sous le curseur
map <F2> <Esc>:exe '!chromium http://www.google.fr/search?q=site:docs.djangoproject.com+<cWORD>'<CR><CR>
imap <F2> <Esc>:exe '!chromium http://www.google.fr/search?q=site:docs.djangoproject.com+<cWORD>'<CR><CR>
