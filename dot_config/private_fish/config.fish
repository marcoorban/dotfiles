set -g fish_greeting

fish_config theme choose Dracula

if test (uname) = "Darwin"
    if test -d /opt/homebrew/bin
        fish_add_path /opt/homebrew/bin
        fish_add_path /opt/hombrew/sbin
    end
end

alias fsrc="source ~/.config/fish/config.fish"
