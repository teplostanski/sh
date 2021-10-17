#!/bin/sh
echo "v1.2"
echo "┌─────────────────────────────────────────────────────────────────────────────┐"
echo "│                               ОБНОВЛЕНИЕ ПАКЕТОВ                            │"
echo "└─────────────────────────────────────────────────────────────────────────────┘"
sudo pacman -Syy
echo "┌─────────────────────────────────────────────────────────────────────────────┐"
echo "│                                      ДАЛЕЕ                                  │"
echo "└─────────────────────────────────────────────────────────────────────────────┘"
while true; do
	echo "------------------------------------------------------------------------------"
    echo ""
    echo ""
    echo ""
    echo ""
    read -p "Установить XORG? [Y/n]
1 - Установить XORG | 2 - Посмотреть есть ли файл .xinitrc | 3 - Создать файл .xinitrc | 0 - Выход:  " yn
    case $yn in
        [1]* ) cd /tmp
        echo "┌─────────────────────────────────────────────────────────────────────────────┐"
				echo "│                               УСТАНОВКА XORG                                │"
				echo "└─────────────────────────────────────────────────────────────────────────────┘"
				sudo pacman -S xorg xorg-xinit
				cd ~/
				touch .xinitrc
        echo "exec i3" >> .xinitrc; break;;
				[2]* ) cd ~/
				echo "------------------------------------------------------------------------------"
				echo ""
				echo ""
				echo ""
				echo ""
        cat .xinitrc;;
        [3]* ) cd ~/
        touch .xinitrc
        echo "exec i3" >> .xinitrc
        echo "┌─────────────────────────────────────────────────────────────────────────────┐"
				echo "│                                     ГОТОВО!                                 │"
				echo "└─────────────────────────────────────────────────────────────────────────────┘";;
        [0]* ) exit;;
        * ) echo "Выбери 1 2 3 или 0"
    esac
done
echo "┌─────────────────────────────────────────────────────────────────────────────┐"
echo "│                                      ДАЛЕЕ                                  │"
echo "└─────────────────────────────────────────────────────────────────────────────┘"
cd /tmp
echo "┌─────────────────────────────────────────────────────────────────────────────┐"
echo "│                                УСТАНОВКА ПАКЕТОВ                            │"
echo "└─────────────────────────────────────────────────────────────────────────────┘"
pacman -S --needed base-devel yajl
sudo pacman -S -y ukui-power-manager --noconfirm
sudo pacman -S mc --noconfirm
sudo pacman -S micro --noconfirm
sudo pacman -S nautilus --noconfirm
sudo pacman -S dmenu --noconfirm
sudo pacman -S gnome-disk-utility --noconfirm
sudo pacman -S urxvt --noconfirm
sudo pacman -S xscreensaver --noconfirm
sudo pacman -S nodejs --noconfirm
sudo pacman -S npm --noconfirm
sudo pacman -S rofi --noconfirm
sudo pacman -S xed --noconfirm
sudo pacman -S tilix --noconfirm
sudo pacman -S i3-gaps --noconfirm
sudo pacman -S i3blocks --noconfirm
sudo pacman -S git --noconfirm
sudo pacman -S wget --noconfirm
sudo pacman -S curl --noconfirm
sudo pacman -S i3status --noconfirm
echo "┌─────────────────────────────────────────────────────────────────────────────┐"
echo "│                                  УСТАНОВКА YAY                              │"
echo "└─────────────────────────────────────────────────────────────────────────────┘"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
echo "┌─────────────────────────────────────────────────────────────────────────────┐"
echo "│                                      ДАЛЕЕ                                  │"
echo "└─────────────────────────────────────────────────────────────────────────────┘"
while true; do
	echo "------------------------------------------------------------------------------"
    echo ""
    echo ""
    echo ""
    echo ""
    read -p "Установить chaotic aur? [Y/n]
Yes по умолчанию: " yn
    case $yn in
        [Yy]* ) cd /tmp
        echo "┌─────────────────────────────────────────────────────────────────────────────┐"
				echo "│                               УСТАНОВКА CHAOTIC AUR                         │"
				echo "└─────────────────────────────────────────────────────────────────────────────┘"
				curl -OL git.io/chaotic-aur_add.sh
				chmod +x chaotic-aur_add.sh
				sudo ./chaotic-aur_add.sh
				echo "┌─────────────────────────────────────────────────────────────────────────────┐"
				echo "│                               ДОУСТАНОВКА ПАКЕТОВ                           │"
				echo "└─────────────────────────────────────────────────────────────────────────────┘"
				sudo pacman -S pamac-aur --noconfirm
				sudo pacman -S autotiling --noconfirm
				sudo pacman -S vscodium --noconfirm
				sudo pacman -S librewolf --noconfirm
				yay -S qxkb --noconfirm
				yay -S vscodium-marketplace --noconfirm; break;;
        [Nn]* ) cd
        echo "┌─────────────────────────────────────────────────────────────────────────────┐"
				echo "│                               ДОУСТАНОВКА ПАКЕТОВ                           │"
				echo "└─────────────────────────────────────────────────────────────────────────────┘"
				sudo pacman -S pamac-aur --noconfirm
				sudo pacman -S autotiling --noconfirm
				sudo pacman -S vscodium --noconfirm
				sudo pacman -S librewolf --noconfirm
				yay -S qxkb --noconfirm
				yay -S vscodium-marketplace --noconfirm; break;;
        '' ) cd /tmp
        echo "┌─────────────────────────────────────────────────────────────────────────────┐"
				echo "│                               УСТАНОВКА CHAOTIC AUR                         │"
				echo "└─────────────────────────────────────────────────────────────────────────────┘"
				curl -OL git.io/chaotic-aur_add.sh
				chmod +x chaotic-aur_add.sh
				sudo ./chaotic-aur_add.sh
				echo "┌─────────────────────────────────────────────────────────────────────────────┐"
				echo "│                               ДОУСТАНОВКА ПАКЕТОВ                           │"
				echo "└─────────────────────────────────────────────────────────────────────────────┘"
				sudo pacman -S pamac-aur --noconfirm
				sudo pacman -S autotiling --noconfirm
				sudo pacman -S vscodium --noconfirm
				sudo pacman -S librewolf --noconfirm
				yay -S qxkb --noconfirm
				yay -S vscodium-marketplace --noconfirm; break;;
        * ) echo "Напиши (Y)es или (N)o"
    esac
done
echo "┌─────────────────────────────────────────────────────────────────────────────┐"
echo "│                               ОБНОВЛЕНИЕ СИСТЕМЫ                            │"
echo "└─────────────────────────────────────────────────────────────────────────────┘"
sudo pacman -Syyu
echo "┌─────────────────────────────────────────────────────────────────────────────┐"
echo "│                                     ГОТОВО!                                 │"
echo "└─────────────────────────────────────────────────────────────────────────────┘"