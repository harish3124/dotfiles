set fish_greeting ""

#neofetch | lolcat

#colorscript random

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

starship init fish | source

export RUST_BACKTRACE=0

export GOPATH=$HOME/.go

export EDITOR="emacsclient -c"

# for rip:
export GRAVEYARD=$HOME/.local/share/Trash

# Qt theme
export QT_QPA_PLATFORMTHEME="qt5ct"


# zoxide init
zoxide init fish | source

# pnpm
set -gx PNPM_HOME "/home/harish/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end