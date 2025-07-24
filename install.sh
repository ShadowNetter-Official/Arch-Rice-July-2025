#!/bin/bash

echo
echo "Arch Rice installation script"
echo "by ShadowNetter"
echo
read -p "press enter to start: "
echo
echo "installing required packages..."
sudo pacman -S kitty lightdm-gtk-greeter ttf-jetbrains-mono-nerd firefox rofi fastfetch python-pipx htop cmatrix nitrogen chafa git
echo
echo "done"
echo
echo "installing YAY..."
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd ~/
echo
echo "done"
echo
echo "installing required packages with YAY..."
yay -S fvwm fvwm-themes fvwm-themes-extra fvwm-crystal fvwm-icons cava tty-clock
echo
echo "done"
echo
echo "cloning repo..."
git clone https://github.com/ShadowNetter-Official/Arch-Rice-July-2025.git
cd Arch-Rice
echo
echo "done"
echo
echo "configuring FVWM and other tools..."
mkdir ~/.config/rofi
mkdir ~/.config/fastfetch
mkdir ~/wallpapers
mkdir ~/.config/kitty
cp config/fvwm/config ~/.fvwm/
rm ~/.bashrc
cp config/bashrc ~/.bashrc
cp config/fastfetch/* ~/.config/fastfetch/
cp wallpapers/* ~/wallpapers/
cp config/kitty/kitty.conf ~/.config/kitty/
cp config/rofi/config.rasi ~/.config/rofi/
sudo systemctl enable lightdm.service
pipx install git+https://github.com/rmaake1/terminal-rain-lightning.git
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
echo
echo "done"
echo
echo "you can now reboot your system"

