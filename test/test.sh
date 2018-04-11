
#php -S localhost:8081 -t public/

#gnome-terminal -x sh -c "server.sh; bash"
#bash server.sh & #this doesn't blocks!

#sleep 3

#echo echo hello > sayhi.command; chmod +x sayhi.command; open sayhi.command
chmod +x server.sh
chmod +x launch.sh
chmod +x prog.sh

open -a Terminal.app server.sh

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

echo
curl http://localhost:8080/count
echo
echo