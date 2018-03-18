#!/bin/bash

#
# Author: Yoel Antonio Duran Diaz <yoet92@gmail.com>
# Git: https://github.com/yoet92/
#

#==========================VARIABLES=================================#

# LAN RED
LAN_RED= #ej. 192.168.56.0/24
# ARCHIVO CON MAC;IP ej. 00:11:22:33:44:55;254
MAC_FILE=/etc/mac
# CONFIGURACION DHCP
CONF_FILE=/etc/dhcp/dhcp.conf

#====================================================================#

DHCP_CONF=/etc/dhcp/dhcpd.conf
RED=`echo ${LAN_RED} | cut -d / -f1 | cut -d . -f1,2,3`
SMSG="El fichero: "
EMSG=" no existe o esta vacio, debe crearlo y llenarlo."
if [ ! -s $MAC_FILE ]; then
echo "
${SMSG}${MAC_FILE}${EMSG}
"
exit 0
fi
if [ ! -s $DHCP_CONF ]; then
echo "
${SMSG}${DHCP_CONF}${EMSG}
"
exit 0
fi
if [ ! -s $CONF_FILE ]; then
echo "
${SMSG}${CONF_FILE}${EMSG}
"
exit 0
fi

cat > ${DHCP_CONF} < ${CONF_FILE}

for MAC in `cat ${MAC_FILE}`; do
echo "host PC-`echo ${MAC} | cut -d \; -f2` {
  hardware ethernet `echo ${MAC} | cut -d \; -f1`;
  fixed-address ${RED}.`echo ${MAC} | cut -d \; -f2`;
}" >> ${DHCP_CONF}
done

if (( /etc/init.d/isc-dhcp-server restart ) && ( /etc/init.d/iptables start )); then
echo "
  ##============##
  ## TERMINADO  ##
  ##============##
"
else
echo "
  ##========================##
  ## SE ENCONTRARON ERRORES ##
  ##========================##
"
fi
