# TI-In-A-Box

This project creates a standalone Threat Intel in a box solution that can be used for Microsoft Sentinel .
Once fully deployed, you will be able to ingest TI Feeds into Sentinel to enhance your analytics. 


## Step 1: Provision Ubuntu VM
For this solution to work, you will to provision an <b> Ubuntu 20.04 or later </b> VM in Azure.<br>
Please make sure that you restrict your SSH and RDP ports to only your personal IP. 

I recommend creating a ssh key for it; however, a password would work as well.

## Step 2 - Log into VM
SSH into your now Linux VM using your private key or password. 

## Step 3: Download the setup script onto your VM
wget --no-cache -O /tmp/Setup.sh https://raw.githubusercontent.com/ml58158/TI-In-A-Box/main/Setup.sh

## Step 4: Install the MISP Core TI Platform and all pre-requisties
/tmp/Setup.sh

## Manual Steps to run after Setup

## Step 5: Set a local password for MISP user
sudo passwd misp 

## Step 6: Set Xfce4 session
echo xfce4-session >~/.xsession

## Step 7: Create RDP Rule in Azure Resource Group NSG
Log into Azure and go to your VM Resource group.
Create a rule to allow inbound RDP (Port 3389) for only your IP. 
