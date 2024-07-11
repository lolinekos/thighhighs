#!/bin/bash 

# Only run if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# For Debian & Ubuntu
apt update -y; apt upgrade -y
apt install git screen sqlite3 -y

# Catchall
chmod 777 main
chmod 777 loop.sh

# Change mode to allow more colors for screen (must be ran outside of screen)
export TERM=xterm-256color

# Run thighhighs using gnu screen
screen -S thighhighs ./loop.sh