if test (uname) = "Darwin"
    if test -d /opt/homebrew/bin
        fish_add_path /opt/homebrew/bin
        fish_add_path /opt/hombrew/sbin
    end
end
