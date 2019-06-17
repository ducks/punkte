ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}?"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='
╭[ %{$fg[blue]%}${PWD/#$HOME/~}%{$reset_color%} ]
- %{$fg[green]%}%*%{$reset_color%}
╰🌲 '

RPROMPT='$(git_prompt_info)$(git_prompt_status)%{$reset_color%}'
