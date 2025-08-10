status is-login; and antidot init | source
direnv hook fish | source

bind ctrl-f cdproject repaint
export FZF_DEFAULT_OPTS="--ansi --color=16"

alias ls "ls -v --group-directories-first --color"

function fish_greeting
end
