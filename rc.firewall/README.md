In order to auto start rc.firewall, follow the below steps:
1, sudo chmod 755 rc.firewall
2, sudo chown root:root rc.firewall
3, sudo cp rc.firewall /etc/init.d/
4, Make sure rc.firewall contain the following content to avoid warning when run update-rc.d against it
### BEGIN INIT INFO
# Provides: transparentproxy
# Required-Start:    $local_fs $syslog $remote_fs dbus
# Required-Stop:     $local_fs $syslog $remote_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start transparentproxy
### END INIT INFO

5, run update-rc.d rc.firewall defaults to make it run by default at start up time.
