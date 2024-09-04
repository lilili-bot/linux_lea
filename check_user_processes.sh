#!/bin/bash

# Prompt the user to enter the number of processes to print
read -p "Enter the number of processes to print: " process_count

# Check all processes for the current user
USER_PROCESSES=$(ps aux | grep "^$USER" | grep -v grep)

# Print the results
if [ -n "$USER_PROCESSES" ]; then
    echo "Processes running for user $USER:"
    echo "$USER_PROCESSES"
else
    echo "No processes found for user $USER."
fi

