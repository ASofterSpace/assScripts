#!/bin/bash

# Script to restart apache (serving e.g. a softer space website)
# and node.js based apps on the same server

# IMPLICIT ASSUMPTIONS:
# 1) This script is started as root user / via sudo (however, if not, then the script will complain)
# 2) All node.js based apps lie in the home folder of the user
# 3) All node.js based apps have a main.js file as entrypoint



echo 'Restarting all a softer space related applications running on this server...'



if [[ $UID -ne 0 ]] ; then

	echo 'Sorry! You have to be root to execute this script, or call it using sudo!'
	echo 'Restart failed.'

	exit 1
fi



echo 'Restarting apache server...'

service apache2 restart



echo 'Restarting node.js applications...'

# here we are using grep with a sneaky workaround, which means it will not grep for itself
# (as its own line in the ps output contains '[n]pm', but it is searching for 'npm')
kill -9 $(ps -aux | grep '[n]pm' | awk '{print $2}')
kill -9 $(ps -aux | grep '[n]ode main.js' | awk '{print $2}')



echo 'All running node.js applications have been stopped.'

cd ~

# iterate over all files in the home folder and find any main.js...
for mainfile in $(find . -name 'main.js'); do
	# ... but ignore node_moduls subfolders, as in there, other main.js files are located...
	if [[ ! $mainfile == *'/node_modules/'* ]] ; then
		# ... and then cd into the folder in which the file is kept, start it, and cd back home
		echo "Starting $mainfile..."
		cd $(dirname "$mainfile")
		npm start &
		disown
		sleep 2
		cd ~
	fi
done



echo 'Restart done!'
