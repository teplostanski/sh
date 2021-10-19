#!/bin/sh
while true; do
	echo "------------------------------------------------------------------------------"
    echo "Скрипт русификации системы и клавиатуры | The script of Russification of the system and keyboard v1.1"
    echo ""
    echo "Сейчас откроется файл | The file will open now /etc/locale.gen"
    echo "Нужно найти и расскоментировать (убрать в начале #) строки: | You need to find and uncomment (remove at the beginning of #) the lines:"
		echo "en_US.UTF-8 UTF-8"
		echo "ru_RU.UTF-8 UTF-8"
    echo ""
    read -p "Продолжить? | Continue?

1 - Да | Yes

0 - Выход | Exit
echo "------------------------------------------------------------------------------"
: " yn
    case $yn in
        [1]* ) sudo pacman -Syy
	sudo pacman -S nano --noconfirm
	sudo pacman -S terminus-font --noconfirm
        sudo nano /etc/locale.gen
        locale-gen
        localectl set-locale LANG=en_US.UTF-8
        loadkeys ruwin_alt_sh-UTF-8
        setfont cyr-sun16
        echo 'KEYMAP="ruwin_alt_sh-UTF-8"' >> /etc/vconsole.conf; break;;
        # либо так
				#localectl set-keymap --no-convert ruwin_alt_sh-UTF-8
				# И сохраняем шрифт
				#echo 'FONT="ter-v20b"' >> /etc/vconsole.conf
        [0]* ) clear
	exit;;
        * ) echo "Выбери 1 или 0 | Choose 1 or 0"
    esac
done
echo "Теперь можно по alt+shift переключать раскладку с английской на русскую в tty."
