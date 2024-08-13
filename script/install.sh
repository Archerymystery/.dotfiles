chmod +x start
pacman -S --needed git base-devel wofi waybar hyprland kitty firefox yazi mako imv mpv zathura hyprlock bottom telegram-desktop discord thefuck
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd .. 
rm -rf yay
yay -S wofi-calc wofi-wifi-menu-git 
systemctl --user start startapp.service

#Vencord
sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"

