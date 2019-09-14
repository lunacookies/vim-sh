" Shebang
syn match shShebang "^#!.*$" containedin=shComment

" Operators
syn match shOperator '||'
syn match shOperator '&&'

" Match semicolons as Delimiter rather than Operator
syn match shSemicolon ';' containedin=shOperator,zshOperator

" Highlight braces, brackets and parens as Delimiters in zsh
syn match zshDelim '\v(\(|\))' containedin=zshParentheses
syn match zshDelim '\v(\{|\})' containedin=zshBraces
syn match zshDelim '\v(\[|\])' containedin=zshParentheses

" Special files as Constants
syn match Constant "\v/dev/\w+"
            \ containedin=shFunctionOne,shIf,shCmdParenRegion,shCommandSub

" Common commands
let commands = [ 'arch', 'b2sum', 'base32', 'base64', 'basename', 'basenc', 'bash', 'cat', 'chcon', 'chgrp', 'chown', 'chroot', 'cksum', 'comm', 'cp', 'csplit', 'cut', 'date', 'dd', 'defaults', 'df', 'dir', 'dircolors', 'dirname', 'env', 'expand', 'factor', 'fmt', 'fold', 'git', 'grep', 'groups', 'head', 'hostid', 'hostname', 'hugo', 'id', 'install', 'join', 'killall', 'link', 'ln', 'logname', 'md5sum', 'mkfifo', 'mknod', 'mktemp', 'nice', 'nl', 'nohup', 'nproc', 'numfmt', 'od', 'paste', 'pathchk', 'pr', 'printenv', 'ptx', 'readlink', 'realpath', 'rg', 'runcon', 'scutil', 'seq', 'sha1sum', 'sha2', 'shred', 'shuf', 'split', 'stat', 'stdbuf', 'stty', 'sudo', 'sum', 'sync', 'tac', 'tee', 'terminfo', 'timeout', 'tmux', 'top', 'touch',  'tput', 'tr', 'truncate', 'tsort', 'tty', 'uname', 'unexpand', 'uniq', 'unlink', 'uptime', 'users', 'vdir', 'vim', 'wc', 'who', 'whoami', 'yabai', 'yes' ]

for i in commands
    execute 'syn match shStatement "\v(\w|-)@<!'
                \ . i
                \ . '(\w|-)@!" containedin=shFunctionOne,shIf,shCmdParenRegion,shCommandSub'
endfor

" Fix default highlighting groups
hi def link bashSpecialVariables Identifier
hi def link shCmdSubRegion Delimiter
hi def link shDerefSimple Identifier
hi def link shFor Identifier
hi def link shFunctionKey Statement
hi def link shQuote StringDelimiter
hi def link shRange Delimiter
hi def link shSnglCase Delimiter
hi def link shTestOpr Special
hi def link shVarAssign Operator
hi def link zshDeref Identifier
hi def link zshFunction Function
hi def link zshOperator Operator
hi def link zshStringDelimiter StringDelimiter
hi def link zshSubst Identifier
hi def link zshSubstDelim Delimiter
hi def link zshVariableDef Identifier

" Link custom groups
hi def link shSemicolon Delimiter
hi def link shShebang PreProc
hi def link zshDelim Delimiter
