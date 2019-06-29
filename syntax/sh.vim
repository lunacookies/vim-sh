" Fix groups of default highlighting
hi def link bashSpecialVariables Identifier
hi def link shCmdSubRegion Delimiter
hi def link shDerefSimple Identifier
hi def link shFor Identifier
hi def link shQuote StringDelimiter
hi def link shRange Delimiter
hi def link shSnglCase Delimiter
hi def link shTestOpr Special
hi def link shVarAssign Operator

" Shebang
syn match shShebang "\v#!.*$"
hi def link shShebang PreProc

" Operators
syn match shOperator '||'
syn match shOperator '&&'

" Special files as Constants
syn match Constant "/dev/null" containedin=shFunctionOne,shIf,shCmdParenRegion,shCommandSub

" Common commands
let commands = [ 'arch', 'b2sum', 'base32', 'base64', 'basename', 'basenc', 'bash', 'cat', 'chcon', 'chgrp', 'chown', 'chroot', 'cksum', 'comm', 'cp', 'csplit', 'cut', 'date', 'dd', 'defaults', 'df', 'dir', 'dircolors', 'dirname', 'env', 'expand', 'factor', 'fmt', 'fold', 'git', 'groups', 'head', 'hostid', 'hostname', 'hugo', 'id', 'install', 'join', 'killall', 'link', 'ln', 'logname', 'md5sum', 'mkfifo', 'mknod', 'mktemp', 'nice', 'nl', 'nohup', 'nproc', 'numfmt', 'od', 'paste', 'pathchk', 'pr', 'printenv', 'ptx', 'readlink', 'realpath', 'runcon', 'scutil', 'seq', 'sha1sum', 'sha2', 'shred', 'shuf', 'split', 'stat', 'stdbuf', 'stty', 'sudo', 'sum', 'sync', 'tac', 'tee', 'timeout', 'tmux', 'top', 'touch',  'tput', 'tr', 'truncate', 'tsort', 'tty', 'uname', 'unexpand', 'uniq', 'unlink', 'uptime', 'users', 'vdir', 'wc', 'who', 'whoami', 'yes' ]

for i in commands
    execute 'syn match Statement "\v(\w|-)@<!' . i . '(\w|-)@!" containedin=shFunctionOne,shIf,shCmdParenRegion,shCommandSub'
endfor
