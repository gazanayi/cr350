
# Installation de Docker Engine (Docker et Docker-Compose)
sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker --now

docker --version # Connaitre la version du Docker
docker-compose --version # Connaitre la version du Docker-compose

Réf : https://docs.docker.com/engine/

/!\ Il est préférable de désactiver l'antivirus lors de l'installation

# Lancer le build de des images à partir du docker-compose 
# Se position dans le même dossier ou se trouve fichier docker-compose.yml
docker-compose build --no-cache

# Lancement des conteneurs en mode détaché
docker-compose up -d


# Connexion au conteneur clientsyslog via Terminal:
-------------------------------------------
docker exec -it clientsyslog /bin/bash

# Connexion au conteneur serversyslog via Terminal:
-------------------------------------------
docker exec -it serversyslog /bin/bash

# Connexion au conteneur testeursyslog via Terminal:
-------------------------------------------
docker exec -it testeursyslog /bin/bash



-------------------------------------------

# Diagnostique Fail2ban
# Vérifier les jails du fail2ban
faile2ban-client status

# Vérifier l'état du jail SSHD en particulier incluant le nombre de tentatives échouées et IPs bannis 
faile2ban-client status sshd

# Débannir une IP en particulier :
fail2ban-client unban IP

# Débannir toutes les IPs
fail2ban-client unban --all

-------------------------------------------
# Lancement et de la capture du réseau clientsyslog 
tcpdump -i eth0 -nn


## Commandes importantes:
docker-compose down       : Permet d'arrêter et supprimer les conteneurs et réseau qui sont définit dans le fichier compose.

docker container ls       : affiche les conteneurs en cours d'exécution
docker rm container_ID    : Supprimer un conteneur


docker network ls         : Affiche les réseaux
docker rm network_ID      : Supprimer un réseau

docker image ls           : Affiche les images en cours d'utilisation
docker image rm image_ID  : Supprimer une image
docker image prune -a     : Supprimer toutes les images dont aucun conteneur associé