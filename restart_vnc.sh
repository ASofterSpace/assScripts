#!/bin/bash

# Script to restart vnc on e.g. ASS Newton PM-01



echo 'Restarting the VNC server on this machine...'



echo 'Removing previously running VNC server processes...'

vncserver -kill :1

kill -9 $(ps -aux | grep 'vnc' | grep -v 'restart_vnc.sh' | awk '{print $2}')



echo 'All running VNC server processes have been stopped.'

vncserver :1 &
disown



echo 'Restart done!'
