echo "attempting to wake the machine"
hyprctl dispatch dpms on
sleep 1
pkill -9 hyprlock
sleep 0.5
	hyprctl --instance 0 'keyword misc: allow_session_lock_restore 1'
	hyprctl --instance 0 dispatch exec hyprlock
sleep 0.5
