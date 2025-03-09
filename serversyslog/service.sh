#!/bin/sh

# Démarrer et activer rsyslog
systemctl enable rsyslog
systemctl start rsyslog

tail -f /dev/null
