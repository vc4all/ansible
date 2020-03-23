# Deactivate monitoring of network interfaces that are not up. Otherwise we can get a lot of empty charts.
for f in $(find /etc/munin/plugins/ \( -lname /usr/share/munin/plugins/if_ -o -lname /usr/share/munin/plugins/if_err_ -o -lname /usr/share/munin/plugins/bonding_err_ \)); do
	IF=$(echo $f | sed s/.*_//);
	if ! grep -qFx up /sys/class/net/$IF/operstate 2>/dev/null; then
		rm $f;
	fi;
done
