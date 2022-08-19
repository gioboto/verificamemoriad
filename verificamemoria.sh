#!/bin/bash
#
#script verificamemoria.sh
# Version : 1.0
#Paraverificar memoria libre de un servidor y ejecutar una acciÃÃ³n
#Autor : Ing. Jorge Navarrete
#mail : jorge_n@web.de
#Fecha : 2019-02-19

#script verificamemoria.sh

#===========================================================================
PATH=/bin:/usr/bin:/usr/sbin/
#===========================================================================

PORCENTAJEFREE=15
PORMEMFREE=`free | grep Mem | awk '{print $4/$2 * 100.0}'  | cut -d. -f1`

if  (($PORCENTAJEFREE > $PORMEMFREE)); then
/etc/init.d/uwsgi-ra restart >> /dev/null
#echo hola
fi


