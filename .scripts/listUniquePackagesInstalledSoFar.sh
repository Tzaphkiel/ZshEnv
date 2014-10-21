cat /var/log/pacman.log | grep "pacman -S.*" | sed  's/.*\(pacman .*\)/\1/' | sort | uniq -u

