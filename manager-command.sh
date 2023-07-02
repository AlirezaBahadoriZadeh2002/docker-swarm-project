#!/bin/bash

# Read the first line of the file and assign it to a variable
command_to_run=$(head -n 1 /home/manager.txt)

# Run the command
$command_to_run

