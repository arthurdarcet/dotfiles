LOGIN=""
if [ $UID -eq 0 ]; then
    CARETCOLOR="red";
else
    if [ "$USER" != "arthur" ]; then LOGIN="%{$fg[green]%}%n"; fi;
    CARETCOLOR="blue";
fi

GITPROMPT='%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}%{$reset_color%} %% '

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue])$fg[yellow]×$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

PROMPT="%{$fg[magenta]%}%T %{$LOGIN$reset_color@$fg[$CARETCOLOR]%}%m %{$fg[yellow]%}%~ $GITPROMPT"

