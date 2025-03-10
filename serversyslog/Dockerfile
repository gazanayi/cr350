FROM ubuntu:latest

# Installation des packages nécessaires

RUN apt update \
&& apt install -y apt-utils vim curl systemctl iproute2 net-tools iputils-ping openssh-server rsyslog ufw nano \
&& apt clean 

# Copie des fichiers vers le conteneur
COPY --chown=root:root ./service.sh /service.sh
COPY --chown=root:root ./rsyslog.conf /etc/rsyslog.conf

# Rendre le script exécutable
RUN chmod +x /service.sh

EXPOSE 514

# Point d'entrée pour l'exécution du script bash
ENTRYPOINT [ "/bin/bash", "/service.sh" ]
