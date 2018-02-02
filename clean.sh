sudo apt autoremove -y; sudo apt autoclean -y; sudo apt clean -y; sudo apt install -y -f; dpkg -l | awk '/^rc/ {print $2}' | xargs sudo dpkg --purge;
