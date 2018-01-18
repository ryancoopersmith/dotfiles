setlocal shiftwidth=4
setlocal tabstop=4

setlocal omnifunc=necoghc#omnifunc

nnoremap <silent> <leader>l :GhcModLint<CR>
nnoremap <silent> <leader>c :GhcModCheck<CR>
nnoremap <silent> <leader>g :GhcModSigCodegen<CR>
nnoremap <silent> <leader>t :GhcModType<CR>
nnoremap <silent> <leader>tc :GhcModTypeClear<CR>
