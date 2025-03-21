FROM ubuntu:latest

# Installation des packages nécessaires

RUN apt-get update -y \
&& apt-get install -y apt-utils tcpdump vim curl iproute2 systemctl net-tools iputils-ping rsyslog ufw fail2ban openssh-server nano apache2 \
&& apt clean 

# Copie des fichiers vers le conteneur
COPY --chown=root:root ./service.sh /service.sh
COPY --chown=root:root ./rsyslog.conf /etc/rsyslog.conf
COPY --chown=root:root ./jail.local /etc/fail2ban/jail.local
COPY --chown=root:root ./site/ /var/www/html/
COPY --chown=root:root ./apache2.conf /etc/rsyslog.d/apache.conf

# Rendre le script exécutable
RUN chmod +x /service.sh

#Exposer les ports 22 (SSH) et 80 (HTTP)
EXPOSE 22 80

# Point d'entrée pour l'exécution du script bash
ENTRYPOINT [ "/bin/bash", "/service.sh" ]
