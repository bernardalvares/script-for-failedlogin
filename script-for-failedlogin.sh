#!/bin/bash
# Mostar os ultimos logins e tentativas de login, no sistema.
clear
echo -e “Ultimos logins no sistema”
echo
last | cut -d ” ” -f 1 | sort | uniq | sed /^$/d
echo
echo -e “Tecle “ENTER” para continuar”
read
if [ -e /var/log/secure ] ; then
echo -e “Falha de acesso ou ilegal”
echo
cat /var/log/secure | egrep [Ff]ailed
cat /var/log/secure | egrep [Ii]llegal
echo
echo -e “Tecle “ENTER” para continuar”
read
fi
if [ -e /var/log/auth.log ] ; then
echo -e “Falha de Acesso ou ilegal”
echo
cat /var/log/auth.log | egrep [Ff]ailed
cat /var/log/auth.log | egrep [Ii]llegal
echo
echo -e “Tecle “ENTER” para finalizar”
read
fi
