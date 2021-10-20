#!/bin/sh
while true; do
	echo "------------------------------------------------------------------------------"
    read -p "Установка видеодрайверов
    
!ВАЖНО! 
В файле /etc/pacman.conf должны быть раскоментированы строки
[multilib]
Include = /etc/pacman.d/mirrorlist

1 - Nvidia

2 - Nouveau

3 - AMD

4 - Intel

0 - Выход
------------------------------------------------------------------------------
: " yn
    case $yn in
        [1]* ) sudo pacman -S nvidia-dkms --noconfirm
        sudo pacman -S nvidia-utils --noconfirm
        sudo pacman -S lib32-nvidia-utils --noconfirm
        sudo pacman -S nvidia-settings --noconfirm
        sudo pacman -S vulkan-icd-loader --noconfirm
        sudo pacman -S lib32-vulkan-icd-loader --noconfirm
        sudo pacman -S lib32-opencl-nvidia --noconfirm
        sudo pacman -S opencl-nvidia --noconfirm
        sudo pacman -S libxnvctrl  --noconfirm
        sudo mkinitcpio -P;;
        [2]* ) sudo pacman -S mesa --noconfirm
        sudo pacman -S lib32-mesa --noconfirm
        sudo pacman -S xf86-video-nouveau --noconfirm
        sudo pacman -S vulkan-icd-loader --noconfirm
        sudo pacman -S lib32-vulkan-icd-loader --noconfirm;;
        [3]* ) sudo pacman -S mesa --noconfirm
        sudo pacman -S lib32-mesa --noconfirm
        sudo pacman -S vulkan-radeon --noconfirm
        sudo pacman -S lib32-vulkan-radeon --noconfirm
        sudo pacman -S vulkan-icd-loader --noconfirm
        sudo pacman -S lib32-vulkan-icd-loader --noconfirm;;
        [4]* ) sudo pacman -S mesa --noconfirm
        sudo pacman -S lib32-mesa --noconfirm
        sudo pacman -S vulkan-intel --noconfirm
        sudo pacman -S lib32-vulkan-intel --noconfirm
        sudo pacman -S vulkan-icd-loader --noconfirm
        sudo pacman -S lib32-vulkan-icd-loader --noconfirm;;
        [0]* ) exit;;
        * ) echo "Выбери 1 или 0 | Choose 1 or 0"
    esac
done
