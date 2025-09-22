source ~/.config/git-prompt.sh
eval "$(fzf --bash)"

PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s) ")'
PS1='\w\[\e[1m\]${PS1_CMD1}\n[\u@\h]\[\e[0m\] > '
