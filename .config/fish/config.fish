if status is-interactive
   thefuck --alias | source 
   starship init fish | source
   neofetch --kitty /home/Archer/.config/neofetch/avatar.png
end

# pnpm
set -gx PNPM_HOME "/home/Archer/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/Archer/anaconda3/bin/conda
    eval /home/Archer/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

