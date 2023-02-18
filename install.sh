# this is the install script for termfetch
# it is recommended that you read through and understand what is happening, before you install this script.

#!/bin/sh

echo "This installer will do the following: "
echo "1) Make all shell files executable"
echo "2) Move all shell scripts to /usr/bin"
echo "3) Optionally install dependencies and optional stuff"

echo "Would you like to continue?: " 
read user_continue

if echo "$user_continue" | grep -q "y"; 
then
  chmod +x termfetch_ascii.sh
  chmod +x termfetch_info.sh
  chmod +x termfetch
  echo "made executable; termfetch_ascii.sh termfetch_info.sh termfetch"
  sudo cp termfetch_ascii.sh /usr/bin
  sudo cp termfetch_info.sh /usr/bin
  sudo cp termfetch /usr/bin
  echo "moved scripts to /usr/bin/termfetch_ascii /usr/bin/termfetch_info.sh /usr/bin/termfetch"
  echo "install finished, please check to make sure everything is working."

  echo "Would you like to install the following dependencies?"
  echo "'scdoc'"
  echo "'fetchutils'"

  read user_depen

  if echo "$user_depen" | grep -q "y";
  then
    git clone https://git.sr.ht/~sircmpwn/scdoc
    git clone https://github.com/kiedtl/fetchutils
    sudo make -C fetchutils install
    sudo make -C scdoc install
  else
    echo "quittting"
  fi
else
  echo "quitting"
fi
