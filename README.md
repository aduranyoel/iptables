## iptables

 - Solo tienes que ajustar las variables a tu red y tendras un firewall stable y seguro.

#### GUIA:
1. `cp iptables /etc/init.d/iptables`
2. `chmod 777 /etc/init.d/iptables`
3. `apt-get install rcconf`
4. `rcconf`
5. Buscar donde dice iptables y marcarlo con espacio => OK.
6. Ahora tu firewall iniciara con el sistema (LISTO).

#### USOS:
1. /etc/init.d/iptables start ==>> inicia el firewall
2. /etc/init.d/iptables stop ==>> detiene el firewall
3. /etc/init.d/iptables restart ==>> reinicia el firewall

Con este escript no importa los servicios que tengas en tu servidor. Todos funcionaran bien sin necesidad de modificar ninguna regla.
