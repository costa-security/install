#!/bin/bash
# Copyright (c) 2024 Costa Security Inc. & AUTHORS
# SPDX-License-Identifier: BSD-3-Clause
#
# This script installs the Costa client on a Linux machine.

# Check if curl is installed
if ! command -v curl >/dev/null 2>&1; then
  echo "curl is required to download the Costa client. Please install curl and try again."
  exit 1
fi

# Define the download URLs for different Linux architectures
LINUX_AMD64_URL="https://costa-security-downloads.s3.us-west-2.amazonaws.com/costa/latest/costa_linux_amd64"
LINUX_ARM64_URL="https://costa-security-downloads.s3.us-west-2.amazonaws.com/costa/latest/costa_linux_arm64"

# Determine architecture (amd64, arm64, or mac)
ARCH=$(uname -m)

if [[ "$ARCH" == "x86_64" ]]; then
  # For AMD architecture
  DOWNLOAD_URL=$LINUX_AMD64_URL
  CLIENT_NAME="costa_linux_amd64"
elif [[ "$ARCH" == "aarch64" ]]; then
  # For ARM architecture
  DOWNLOAD_URL=$LINUX_ARM64_URL
  CLIENT_NAME="costa_linux_arm64"
elif [[ "$ARCH" == "arm64" ]]; then
  # For ARM on Mac, exit with a warning
  echo "This script is for Linux only. Mac (arm64 or x86_64) architecture is not supported."
  exit 1
else
  # For unsupported architectures
  echo "Unsupported architecture: $ARCH"
  exit 1
fi

# Download the client
echo "Downloading Costa client for $ARCH..."
curl -Lo /tmp/$CLIENT_NAME "$DOWNLOAD_URL"

# Make the downloaded file executable
chmod +x /tmp/$CLIENT_NAME

# Move the client to /usr/local/bin with a generic name 'costa'
echo "Moving client to /usr/local/bin..."
sudo mv /tmp/$CLIENT_NAME /usr/local/bin/costa

# Refresh the PATH (this is usually not needed for /usr/local/bin, but it's included for completeness)
export PATH=$PATH:/usr/local/bin

# Verify installation and run the client
echo "Verifying installation..."
if command -v costa >/dev/null 2>&1; then
  echo "Client installed successfully!"
  # Run costa --help
  costa --help
else
  echo "Installation failed, 'costa' not found in PATH."
  exit 1
fi
