#!/bin/sh

# Démarrer rsyslog

systemctl enable rsyslog

systemctl start rsyslog


# Démarrer Apache

systemctl enable apache2

systemctl start apache2


# Démarrer SSH 

service ssh enable

service ssh start


# Démarrer fail2ban

systemctl enable fail2ban.service

systemctl start fail2ban.service


# Maintenir le conteneur en vie

tail -f /dev/null