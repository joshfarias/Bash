# Bash
Repo for bash scripts

## WireGuard connection toggle script
**[wg.sh](https://github.com/joshfarias/Bash/blob/main/src/wg.sh)**

Script used to start and stop a WireGuard VPN connection assuming a default configuration in `/etc/wireguard` with an interface name of `wg0`. This script must be run with sudo permissions as it uses the `wg-quick up` and `wg-quick down` commands to start and stop the VPN connection which directly modifies network interfaces and routes on the system.

To start the connection: `./wg.sh start`

To stop the connection: `./wg.sh stop`
