#!/usr/bin/env fish

# The first argument is strictly the window class name to search for
set class_name $argv[1]

# Everything from the second argument onward is the launch command
set launch_cmd $argv[2..-1]

# Query Niri for an open window with this class name
set if_open (niri msg -j windows | jq -r ".[] | select(.class == \"$class_name\") | .id" 2>/dev/null)

if test -n "$if_open"
    # Window exists; close it using its specific Niri ID
    niri msg action close-window --window-id "$if_open"
else
    # Window does not exist; launch it safely
    eval $launch_cmd
end
