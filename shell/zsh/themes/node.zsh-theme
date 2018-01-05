GREEN="%{$fg_bold[green]%}"
YELLOW="%{$fg_bold[yellow]%}"
CYAN="%{$fg_bold[cyan]%}"
RED="%{$fg_bold[red]%}"
BLUE="%{$fg_bold[blue]%}"
RESET="%{$reset_color%}"

PROMPT='$GREEN⬢ $BLUE%c$(git_prompt_info)$(git_prompt_status)$RESET λ '

ZSH_THEME_GIT_PROMPT_PREFIX="$RED ⚙  "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="$RED ✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="$GREEN ✔ "


ZSH_THEME_GIT_PROMPT_MODIFIED="$RED(modified)"
ZSH_THEME_GIT_PROMPT_ADDED="$YELLOW(added)"
ZSH_THEME_GIT_PROMPT_RENAMED="$RED(renamed)"
ZSH_THEME_GIT_PROMPT_UNMERGED="$YELLOW(unmerged)"
ZSH_THEME_GIT_PROMPT_UNTRACKED="$RED(untracked)"
ZSH_THEME_GIT_PROMPT_DELETED="$RED(deleted)"

# ZSH_THEME_GIT_PROMPT_AHEAD="$YELLOW(ahead)"
# ZSH_THEME_GIT_PROMPT_BEHIND="$YELLOW(behind)"