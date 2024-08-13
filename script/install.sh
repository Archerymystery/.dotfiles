chmod +x start
pacman -S --needed git base-devel wofi waybar hyprland kitty firefox yazi mako imv mpv zathura hyprlock bottom telegram-desktop nodejs discord nvim pnpm thefuck
stow .
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd .. 
rm -rf yay
yay -S wofi-calc wofi-wifi-menu-git 
systemctl --user start startapp.service

#Vencord
git clone https://github.com/Vendicated/Vencord.git
cd Vencord/src
mkdir userplugins
cd userplugins/
git clone https://github.com/henmalib/vc-messageColors.git
git clone https://github.com/nyakowint/vc-premid.git
cd ../..
pnpm i
pnpm build && pnpm inject
