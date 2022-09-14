# TI-In-A-Box
Open-Source TI Ingestion Box for Microsoft Sentinel

This project creates a stand alone TI in a box solution that can be used for Microsoft Sentinel .

## Step 1: Provision Ubuntu VM
For this solution to work, you will to provision an <b> Ubuntu 20.04 or later </b> VM in Azure.<br>
Please make sure that you restrict your SSH and RDP ports to only your personal IP. 

I recommend creating a ssh key for it; however, a password would work as well.

## Step 2 - Log into VM
SSH into your now Linux VM using your private key or password. 

## Step 3: Download the setup script onto your VM
wget --no-cache -O /tmp/Setup.sh https://raw.githubusercontent.com/ml58158/TI-In-A-Box/main/Setup.sh ; bash /tmp/Setup.sh

## Step 4: Install the MISP Core TI Platform 
/tmp/Setup.sh
