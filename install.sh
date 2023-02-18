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
  sudo cp termfetch_ascii.sh /usr/local/bin
  sudo cp termfetch_info.sh /usr/local/bin
  sudo cp termfetch /usr/local/bin
  echo "moved scripts to /usr/local/bin/termfetch_ascii /usr/local/bin/termfetch_info.sh /usr/local/bin/termfetch"

  echo "Would you like to install the following dependencies?"
  echo "'scdoc'"
  echo "'fetchutils'"

  read user_depen

  if echo "$user_depen" | grep -q "y";
  then
    git clone https://git.sr.ht/~sircmpwn/scdoc
    echo "scdoc cloned..."
    git clone https://github.com/kiedtl/fetchutils
    echo "fetchutils cloned..."
    sudo make -C scdoc 
    echo "scdoc compiled..."
    sudo make -C scdoc install
    echo "scdoc installed, please verify that installation went well"
    sudo make -C fetchutils
    echo "fetchutils compiled..."
    sudo make -C fetchutils install
    echo "fetchutils installed"

    if which os; then
      echo "fetchutils appears to have installed successfuly"
    else
      echo "There may be an issue with the fetchutils installation, you may need to manually install using the following command:"
      echo "'git clone https://github.com/kiedtl/fetchutils'"
      echo "you can also cd into the fetchutils directory and install it from there"
      echo "try running 'os' or 'mem' in your terminal"
    fi 

  else
    echo "quittting"
  fi
else
  echo "quitting"
fi
