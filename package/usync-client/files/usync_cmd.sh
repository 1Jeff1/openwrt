#!/bin/sh

cmd=$1

[ -f "$cmd" ] || {
	logger "usync_cmd: invalid paramters"
	exit 1
}

utpl -m uci -m fs -m ubus -E capab=/etc/usync/capabilities.json -E cmd=$1 -i /usr/share/usync/cmd.tpl > /tmp/usync.cmd

[ $? -eq 0 ] || {
	logger "usync_cmd: executing $cmd failed"
	exit 1
}

return 0
