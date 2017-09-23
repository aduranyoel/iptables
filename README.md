## iptables

 - Solo tienes que ajustar las variables a tu red y tendras un firewall stable y seguro.

#### GUIA:
##### Activar inicio automatico
1. `cp iptables /etc/init.d/iptables`
2. `chmod 777 /etc/init.d/iptables`
3. `sudo update-rc.d iptables start 45 S . stop 31 0 6`

##### Desactivar inicio automatico
1. `sudo update-rc.d -f iptables remove`

#### USOS:
1. /etc/init.d/iptables start ==>> inicia el firewall
2. /etc/init.d/iptables stop ==>> detiene el firewall
3. /etc/init.d/iptables restart ==>> reinicia el firewall

Con este escript no importa los servicios que tengas en tu servidor. Todos funcionaran bien sin necesidad de modificar ninguna regla.
