#!/bin/bash

# Path to the installed Costa client
CLIENT_PATH="/usr/local/bin/costa"

# Check if the client exists
if [ -f "$CLIENT_PATH" ]; then
  echo "Uninstalling Costa client..."

  # Remove the client from /usr/local/bin
  sudo rm "$CLIENT_PATH"

  echo "Costa client has been uninstalled."
else
  echo "Costa client is not installed in $CLIENT_PATH. Nothing to uninstall."
fi
