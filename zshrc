HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY_TIME

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[green]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%# "
