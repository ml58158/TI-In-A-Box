## This installs the MISP TI Platform

#1. Update/Upgrade System, if needed
sudo apt-get update -y && sudo apt-get upgrade -y

#2. Install MISP with install.sh
# Please check the installer options first to make the best choice for your install
wget -O /tmp/INSTALL.sh https://raw.githubusercontent.com/MISP/MISP/2.4/INSTALL/INSTALL.sh
bash /tmp/INSTALL.sh

# This will install MISP Core
wget -O /tmp/INSTALL.sh https://raw.githubusercontent.com/MISP/MISP/2.4/INSTALL/INSTALL.sh
bash /tmp/INSTALL.sh -c

#3. Create a Local Password for MISP User
sudo passwd misp

#4. Install XRDP
sudo apt install xrdp
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
sudo ufw allow 3389

#5. Install Xfce4 Desktop
sudo apt-get install xfce4
sudo apt-get install xfce4-terminal

#6. Install Firefox Browser
sudo apt install firefox


