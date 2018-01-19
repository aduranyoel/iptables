 ## iptables

 - La edicion del escript es necesaria para su funcionamiento.!!!
 - Solo tienes que ajustar las variables a tu red.

#### GUIA:
##### Para activar inicio automatico
1. `cp iptables /etc/init.d/iptables`
2. `chmod +x /etc/init.d/iptables`
3. `update-rc.d iptables defaults`

##### Para desactivar inicio automatico
1. `update-rc.d -f iptables remove`

#### USO:
`/etc/init.d/iptables {start(i)|stop(d)|restart(r)|status(s)}`
1. start(i): Inicia el firewall
2. stop(d): Detiene el firewall
3. restart(r): Reinicia el firewall
4. status(s): Lista las reglas del firewall

