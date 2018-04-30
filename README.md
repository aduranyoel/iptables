 ## iptables

 - La edición del escript es necesaria para su funcionamiento.!!!
 - Solo tienes que ajustar las variables a tu red.

#### GUIA:
1. `cp iptables /etc/init.d/iptables`
2. `chmod +x /etc/init.d/iptables`
3. `nano /etc/init.d/iptables` Llenar los valores de las variables.

##### Para activar inicio automatico
4. `update-rc.d iptables defaults`

##### Para desactivar inicio automatico
`update-rc.d -f iptables remove`

#### USO:
`/etc/init.d/iptables {start(i)|stop(d)|restart(r)|status(s)}`

1. start(i): Inicia el firewall
2. stop(d): Detiene el firewall
3. restart(r): Reinicia el firewall
4. status(s): Lista las reglas del firewall

#### NOTA:
En el caso de `iptables_mac_ip_filer` el script `macip_filter.sh` sirve para combinarlo con el servidor DHCP, ya que crea el "dhcpd.conf" a partir del archivo que contiene las `mac` y una configuración establecida del servicio que se encuentre en otro archivo. Se recomienda comentar la línea `range` en la configuración del DHCP para que solamente asigne los IP  a las MAC autorizadas.
