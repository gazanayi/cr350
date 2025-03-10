FROM ubuntu:latest

# Installation des packages nécessaires
RUN apt update \
&& apt install -y apt-utils vim iproute2 systemctl ufw net-tools iputils-ping rsyslog nano openssh-client \
&& apt install -y curl tcpdump \
&& apt clean 


# Copie du script vers le conteneur
COPY --chown=root:root ./service.sh /service.sh

# Rendre le script exécutable.
RUN chmod +x /service.sh

# Maintenir le conteneur en vie.
CMD tail -f /dev/null

ENTRYPOINT [ "/bin/bash", "/service.sh" ]

