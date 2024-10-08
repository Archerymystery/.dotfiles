cd ~/.dotfiles
chmod +x start
pacman -S --needed git base-devel wofi waybar hyprland kitty firefox yazi mako imv mpv zathura hyprlock bottom telegram-desktop nodejs discord nvim pnpm thefuck
stow .
cd ~
git clone https://aur.archlinux.org/yay.git
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cd yay
makepkg -si
cd .. 
rm -rf yay
yay -S wofi-calc wofi-wifi-menu-git 
systemctl --user start startapp.service


#tmux
cd ~/.dotfiles/.config/tmux
mkdir plugins
cd plugins 
git clone https://github.com/tmux-plugins/tpm.git
git clone https://github.com/nordtheme/tmux.git
git clone https://github.com/tmux-plugins/tmux-yank
git clone https://github.com/tmux-plugins/tmux-resurrect
#Vencord
cd ~/
git clone https://github.com/Vendicated/Vencord.git
cd Vencord/src
mkdir userplugins
cd userplugins/
git clone https://github.com/henmalib/vc-messageColors.git
git clone https://github.com/nyakowint/vc-premid.git
cd ../..
pnpm i
pnpm build && pnpm inject
