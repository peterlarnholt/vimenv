" pathogen
execute pathogen#infect()


syntax on

let python_highlight_all=1
set encoding=utf-8

" Wraps go back to previous line
set whichwrap+=<,>,[,]


" Enable folding
set foldmethod=indent
set foldlevel=99

" Run python on F9
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>


"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

