function cdproject
    set -l selected (find $HOME/Projects/ -depth -maxdepth 1 -type d | fzf)
    if test -n "$selected"
        cd $selected
    end
end
