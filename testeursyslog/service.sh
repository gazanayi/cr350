#!/bin/sh

# Démarrer rsyslog
systemctl enable rsyslog
systemctl start rsyslog

# Démarrer SSH
systemctl enable ssh
systemctl start ssh

# Maintenir le conteneur en vie
tail -f /dev/null
