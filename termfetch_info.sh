# welcome to termfetch!
# this is the executable file for termfetch
# since there is no config file included you can either roll your own or directly edit the source code
#
# version 0.1.0
# author  Dillan Cress
# date    2/17/2023
#

# requires fetchutils to function as advertised
#
# LINK: https://github.com/kiedtl/fetchutils
#
# Without that this will not function as expected


# also requires laughadelics fish logo if using fish
# LINK: https://github.com/laughedelic/fish_logo


#!/usr/bin/bash


# variables
COLOR="${1:-97}"
USER="$USER"
HOSTNAME=$(hostname)
SEPARATOR=$(echo "${USER:-user}@${HOSTNAME:-hostname}" | sed -e 's/./-/g')
OS=$(os)
UPTIME=$(upt)
TERMINAL=$(echo "$TERM")
SHELL=$(basename "$SHELL")
EDITOR=$(editor)

printf "\033[1;${COLOR}m${USER:-user}\033[0m@\033[1;${COLOR}m${HOSTNAME:-hostname}\033[0m
\033[0m${SEPARATOR:----}\033[0m
\033[1;${COLOR}mOS       ->   \033[0m${OS:-os}\033[0m
\033[1;${COLOR}mUPTIME   ->   \033[0m${UPTIME:-uptime}\033[0m
\033[1;${COLOR}mTERMINAL ->   \033[0m${TERMINAL:-terminal}\033[0m
\033[1;${COLOR}mSHELL    ->   \033[0m${SHELL:-shell}\033[0m
\033[1;${COLOR}mEDITOR   ->   \033[0m${EDITOR:-editor}\033[0m"




