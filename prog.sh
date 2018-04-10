#!/bin/bash
#cd Sites/pingGame/

echo "Veuillez saisir votre nom"
read nom

echo "Bonjour $nom, bienvenue sur pingGame"


echo "Veuillez saisir un nombre entre 1 et 50"
read nombre

echo "Vous avez choisit le nombre $nombre"

for ((i = 1; i <= $nombre; i += 1))
do
echo $i
curl http://localhost:8080/ping
echo
echo
done 

echo "Afficher le compteur ? yes/no"
read compteur

if [ "$compteur" = "yes" ]
then
	curl http://localhost:8080/count
fi

echo
echo "Souhaitez vous continuer ? yes/no"
read reponse


while test "$reponse" != "no"
    do 
    echo "Veuillez saisir un nombre entre 1 et 50"
	read nombre

	echo "Vous avez choisit le nombre $nombre"

	for ((i = 1; i <= $nombre; i += 1))
	do
	echo $i
	curl http://localhost:8080/ping
	echo
	echo
	done 

	echo "Afficher le compteur ? yes/no"
	read compteur

	if [ "$compteur" = "yes" ]
	then
		curl http://localhost:8080/count	
	fi
	echo
	echo "Souhaitez vous continuer ? yes/no"
	read reponse
done

echo
echo

