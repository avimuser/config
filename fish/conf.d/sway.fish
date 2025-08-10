if test (tty) = "/dev/tty1"
    export $XDG_CURRENT_DESKTOP sway
    exec sway
end
