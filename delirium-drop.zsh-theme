local return_status="%(?..%{$fg[red]%}%(?..⏎)%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[cyan]%}%n%{$reset_color%}@$fg[magenta]%}%t%{$reset_color%}'
    local user_symbol='#'
else
    #local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
    local user_symbol='❯❯❯'
    local user_host='%{$terminfo[bold]$fg[cyan]%}%n%{$reset_color%}@$fg[magenta]%}%t%{$reset_color%}'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="┌─[${user_host}]─[${current_dir}]${git_branch}
└─%B${user_symbol}%b "
RPS1="%B${return_status}%b"

RPROMPT='${return_status}$(git_prompt_status)'
GIT_CLEAN_COLOR="%{$fg[green]%}"
GIT_DIRTY_COLOR="%{$fg[red]%}"
GIT_COLOR="%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $GIT_DIRTY_COLOR✗"
ZSH_THEME_GIT_PROMPT_PREFIX="─[$GIT_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"

MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"
