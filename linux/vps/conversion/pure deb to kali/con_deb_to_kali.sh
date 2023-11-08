#!/bin/bash

sudo apt-get update
sudo apt-get install -y gnupg gnupg2 gnupg1 

# Add Kali Linux repository
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" | sudo tee /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6

# Update repositories
sudo apt-get update
sudo apt dist-upgrade -y

# Install packages
sudo apt-get install -y htop bpytop neofetch


# Download and run swap script
wget https://raw.githubusercontent.com/thepwnexperts/advance-things/main/linux/vps/swap/swap.sh
sudo chmod +x swap.sh
./swap.sh

# Download and run update script
wget https://github.com/thepwnexperts/advance-things/blob/main/linux/vps/conversion/pure%20deb%20to%20kali/con_deb_to_kali.sh
sudo chmod +x update.sh
sudo ./update.sh

# Clean up downloaded scripts
rm swap.sh update.sh
