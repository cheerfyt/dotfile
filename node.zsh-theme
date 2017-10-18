GREEN="%{$fg_bold[green]%}"
YELLOW="%{$fg_bold[yellow]%}"
CYAN="%{$fg_bold[cyan]%}"
RED="%{$fg_bold[red]%}"
BLUE="%{$fg_bold[blue]%}"
RESET="%{$reset_color%}"

PROMPT='$GREEN⬢ $YELLOW%C=> $(git_prompt_info)$RESET'

ZSH_THEME_GIT_PROMPT_PREFIX="$RED λ "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="$RED ✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="$GREEN ✔  "
