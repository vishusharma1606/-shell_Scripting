#!/bin/bash

# Define the filename where the message will be stored
TEMP_FILE="temp_message.txt"

# Prompt user to enter a message
echo "Enter your message:"
read message

# Write the message to the file
echo "$message" > "$TEMP_FILE"

# Display the message
echo "Your message is:"
cat "$TEMP_FILE"

# Ask for confirmation to delete the file
echo "Do you want to delete the message permanently? (yes/no)"
read response

# Check the user's response
if [ "$response" = "yes" ]; then
    # Delete the file permanently
    rm "$TEMP_FILE"
    echo "The message has been deleted permanently."
else
    echo "The message has not been deleted."
fi

