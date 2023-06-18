#!/usr/bin/bash

program=$@

if pid=$(pgrep -x "$program"); then
    echo "Process ID: $pid"
    kill $pid
    echo "Program '$program' terminated."
else
    echo "Program '$program' is not running."
fi
