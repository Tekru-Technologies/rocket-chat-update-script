#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update

# Upgrade installed packages
echo "Upgrading installed packages..."
sudo apt upgrade -y

# Stop the Rocket.Chat service
echo "Stopping the Rocket.Chat service..."
sudo systemctl stop rocketchat

# Remove the existing Rocket.Chat installation
echo "Removing the existing Rocket.Chat installation..."
sudo rm -rf /opt/Rocket.Chat

# Download the latest Rocket.Chat release
echo "Downloading the latest Rocket.Chat release..."
curl -L https://releases.rocket.chat/latest/download -o /tmp/rocket.chat.tgz

# Extract the downloaded archive
echo "Extracting the downloaded archive..."
tar -xzf /tmp/rocket.chat.tgz -C /tmp

# Install the required dependencies
echo "Installing the required dependencies..."
cd /tmp/bundle/programs/server && npm install

# Move the extracted bundle to the installation directory
echo "Moving the extracted bundle to the installation directory..."
sudo mv /tmp/bundle /opt/Rocket.Chat

# Set the correct ownership for the installation directory
echo "Setting the correct ownership for the installation directory..."
sudo chown -R rocketchat:rocketchat /opt/Rocket.Chat

# Start the Rocket.Chat service
echo "Starting the Rocket.Chat service..."
sudo systemctl start rocketchat