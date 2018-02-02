#!/bin/bash
RESULTS=$(whiptail --title "Скрипт установки пакетов" --ok-button "Ввод" --cancel-button "Отмена" --checklist "Пожалуйста выберите:" 0 0 7 \
    "openshot" "Видео редактор OpenShot" OFF \
    "psensor" "Контроль температуры Psensor" OFF \
    "audacity" "Аудио редактор Audacity" OFF \
    "gimp" "Редактор графики Gimp" OFF \
    "filezilla" "FTP клиент Filezilla" OFF \
    "virtualbox" "Программа виртуализации Virtualbox" OFF \
    "cherrytree" "Редактор для заметок Cherrytree" OFF  3>&1 1>&2 2>&3)
 
for RESULT in $RESULTS
do
	case $RESULT in 
	'"openshot"' ) sudo apt install openshot -y ;;
	'"psensor"' ) sudo apt install psensor -y ;;
	'"audacity"' ) sudo apt install audacity -y ;;
	'"gimp"' ) sudo apt install gimp -y ;;
	'"filezilla"' ) sudo apt install filezilla -y ;;
	'"virtualbox"' ) sudo apt install virtualbox -y ;;
	'"cherrytree"' ) sudo apt install cherrytree -y ;;
esac
done
