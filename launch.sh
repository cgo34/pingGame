#!/bin/bash
echo "Bonjour, vous souhaitez lancer le serveur web ? yes/no"
read reponse

if [ "$reponse" = "yes" ]
then
	open -a Terminal.app server.sh
	open -a Terminal.app prog.sh	
fi








