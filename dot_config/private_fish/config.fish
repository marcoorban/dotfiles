set -g fish_greeting
set -gx EDITOR (which nvim)
set -gx VISUAL (which nvim)
set -gx SHELL (which fish)

fish_config theme choose Dracula

if test (uname) = Darwin
    if test -d /opt/homebrew/bin
        fish_add_path /opt/homebrew/bin
        fish_add_path /opt/hombrew/sbin
    end
end

alias fsrc="source ~/.config/fish/config.fish"

export XCURSOR_THEME=Bibata-Modern_Ice
export XCURSOR_SIZE=24

set -gx HYPRSHOT_DIR "~/Pictures/Screenshots"
