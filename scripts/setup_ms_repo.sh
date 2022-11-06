
#! /usr/bin/sh

# Update the list of packages
apt-get update
# Install pre-requisite packages.
apt-get install -y wget apt-transport-https software-properties-common ca-certificates curl apt-transport-https lsb-release gnupg

# Download the Microsoft repository GPG keys
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"

# Register the Microsoft repository GPG keys
dpkg -i packages-microsoft-prod.deb

# Install lsd for better ls
dpkg -i lsd.deb

# Download and install MS signing key
curl -sL https://packages.microsoft.com/keys/microsoft.asc |
    gpg --dearmor |
    tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null

# Add cli repository
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" |
    tee /etc/apt/sources.list.d/azure-cli.list