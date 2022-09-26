## This installs the MISP TI Platform
echo "This installs the MISP TI Platform."

#1. Update/Upgrade System, if needed
echo "Checking if system and packages need upgrading"
sudo apt-get update -y && sudo apt-get upgrade -y

#2. Install XRDP
echo "Installing XRDP for RDP"
sudo apt install xrdp -y
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp
sudo ufw allow 3389

#3. Install Xfce4 Desktop
echo "Installing XFce4 Desktop GUI"
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install xfce4
echo xfce4-session >~/.xsession

#4. Install Firefox Browser
echo "Installing Firefox Browser to access MISP"
sudo apt install firefox -y

#5. Install MISP with install.sh
# This will install MISP Core
echo "Installing MISP TI Platform"
wget -O /tmp/INSTALL.sh https://raw.githubusercontent.com/MISP/MISP/2.4/INSTALL/INSTALL.sh
bash /tmp/INSTALL.sh -c
