eval `dircolors /home/tony/.ls_color`
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status}%F{244}%c%f $(git_prompt_info)%{$reset_color%}'
RPROMPT="%F{244}-%f%F{202}%*%f%F{244}-%f"
ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{202}\ue0a0%f%F{239}:(%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%f%b "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{239}) %{$fg_bold[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{239})"

