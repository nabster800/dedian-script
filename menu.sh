#!/bin/bash
OPTION=$(whiptail --title "Скрипт установки и обновления пакетов" --ok-button "Ввод" --cancel-button "Отмена" --menu "Пожалуйста выберите:" 0 0 7 \
    "1" "Установка пакетов" \
    "2" "Запуск полного обновления" \
    "3" "Очистить кэш и лишние пакеты" \
    "4" "Редактирование файлa sources" \
    "5" "Редактирование файлa fstab" \
    "6" "Редактирование файлa grub" \
    "7" "установка и обновления grub" \
    "8" "Объём свободного места"  3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Вы выбрали пункт:" $OPTION
else
    echo "Вы выбрали отмена."
fi
  case $OPTION in
    1 ) sudo sh soft.sh; sh menu.sh ;;
    2 ) sudo sh upgrade.sh; sh menu.sh ;;
    3 ) sudo sh clean.sh; sh menu.sh ;;
    4 ) sudo nano /etc/apt/sources.list; sh menu.sh ;;
    5 ) sudo nano /etc/fstab; sh menu.sh ;;
    6 ) sudo nano /boot/grub/grub.cfg; sh menu.sh ;;
    7 ) sh grub.sh; sh menu.sh ;;
    8 ) sh free.sh; sh menu.sh ;;
  esac
