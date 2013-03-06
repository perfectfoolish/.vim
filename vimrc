execute pathogen#infect()
syntax on
filetype plugin indent on

" FuzzyFinder
map ,, :FufCoverageFile!<cr>
let g:fuf_enumeratingLimit = 5000
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|(tmp|log|db/migrate|vendor|**/*.png)'
let g:fuf_coveragefile_prompt = '=>'

" escape
imap jj <esc>
imap JJ <esc>
