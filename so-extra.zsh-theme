### NVM

ZSH_THEME_NVM_PROMPT_PREFIX="$fg[white]%}⬡ node:%b %{$reset_color%}$fg[blue]%}"
ZSH_THEME_NVM_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_RUST_INFO_PREFIX="$fg[white]%}%B⬡%b %{$reset_color%}$fg[blue]%}"
ZSH_THEME_RUST_INFO_SUFFIX="%{$reset_color%}"

local return_status="%(?..%{$fg[red]%}%(?..⏎)%{$reset_color%})"

if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[cyan]%}%n%{$reset_color%}@$fg[magenta]%}%t%{$reset_color%}'
    local user_symbol='#'
else
    #local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
    local user_symbol='%{$fg[red]%}%B❯❯❯%b%{$reset_color%}'
    local user_host='%{$terminfo[bold]$fg[cyan]%}%n%{$reset_color%} @ $fg[magenta]%}%t%{$reset_color%}'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
local nvm_info='$(nvm_prompt_info)'
local rust_info="$fg[white]%}⬡ rust:%b $fg[blue]%}$(echo $(rustc -V) | awk '{print $2}')%{$reset_color%}"

PROMPT="%{$fg[cyan]%}┌─%{$reset_color%}%{$fg[blue]%}[%{$reset_color%} ${user_host} %{$fg[blue]%}]%{$reset_color%}%{$fg[cyan]%}─%{$reset_color%}%{$fg[blue]%}[%{$reset_color%} ${nvm_info} ${rust_info} %{$fg[blue]%}]%{$reset_color%}%{$fg[cyan]%}─%{$reset_color%}%{$fg[blue]%}[%{$reset_color%} ${current_dir} %{$fg[blue]%}]${git_branch}
%{$fg[cyan]%}└─%B${user_symbol}%b%{$reset_color%} "
RPS1="%B${return_status}%b"

RPROMPT='${return_status}$(git_prompt_status)'
GIT_CLEAN_COLOR="%{$fg[green]%}"
GIT_DIRTY_COLOR="%{$fg[red]%}"
GIT_COLOR="%{$fg[white]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" $GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $GIT_DIRTY_COLOR✗"
ZSH_THEME_GIT_PROMPT_PREFIX="─[ $GIT_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} ]"

MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"
