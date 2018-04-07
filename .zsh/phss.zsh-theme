# phss.zsh-theme

function real_random {
    echo `od -vAn -N1 -tu < /dev/urandom | tr -d ' '`
}

function random_color {
    echo -n "$FG[$(printf %03d $(real_random))]"
}

function random_arrow() {
    echo "$(random_color)❯"
}

MODE_INDICATOR="%{$fg_bold[red]%}❮%{$reset_color%}%{$fg[red]%}❮❮%{$reset_color%}"
local current_directory="%{$fg[green]%}%c"
local type_indicator="%(!.%{$fg_bold[red]%}#.%{$fg_bold[green]%}$(random_arrow)$(random_arrow)$(random_arrow))"

PROMPT='
${current_directory}$(git_super_status) ${type_indicator}%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""


local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"

RPROMPT='${return_status}$(git_prompt_status) $FG[240]%*%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

export LSCOLORS=''
