#!/bin/zsh
# base16 theme selector 
# !!! DONT USE THIS

# TODO:
# check dependency base16_shell
# check dependency dmenu
# make bash compatible if not

# scripts path  /home/mrk1/.config/base16-shell/scripts
THEME_SCRIPTS_PATH="$HOME/.config/base16-shell/scripts"
SELECTION=$(ls $THEME_SCRIPTS_PATH | dmenu )
COMMAND=$(basename $SELECTION .sh)
echo $COMMAND
