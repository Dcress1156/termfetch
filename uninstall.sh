# uninstall script for termfetch

#!/bin/sh

echo "This script will uninstall termfetch"
echo "Would you like to continue?"

read user_continue

if echo "$user_continue" | grep -q "y";
then
  echo "1) Remove termfetch only and keep dependencies"
  echo "2) Remove termfetch and dependencies"
  echo "3) Exit"

  read user_choice

  if echo "$user_choice" | grep -q "1"; then
    sudo rm /usr/bin/termfetch
    echo "file removed: /usr/bin/termfetch"
    sudo rm /usr/bin/termfetch_info.sh
    echo "file removed: /usr/bin/termfetch_info.sh"
    sudo rm /usr/bin/termfetch_ascii.sh
    echo "file removed: /usr/bin/termfetch_ascii.sh"
    
    echo "Removal complete. Thank you for trying termfetch!"
    echo "If you had issues, please check in on the github page, report issues, and contribute for a better experience."
elif echo "$user_choice" | grep -1 "2"; then
    sudo rm /usr/bin/termfetch
    echo "file removed: /usr/bin/termfetch"
    sudo rm /usr/bin/termfetch_info.sh
    echo "file removed: /usr/bin/termfetch_info.sh"
    sudo rm /usr/bin/termfetch_ascii.sh
    echo "file removed: /usr/bin/termfetch_ascii.sh"
    make -C scdoc uninstall
    sudo rm scdoc -r
    sudo -C fetchutils uninstall
    echo "scdoc and fetchutils uninstalled"
    echo "Removal complete. Thank you for trying termfetch!"
    echo "If you had issues, please check in on the github page, report issues, and contribute for a better experience."
else
  echo "Cya!"
    fi

else 
  echo "Goodbye!"
    fi

