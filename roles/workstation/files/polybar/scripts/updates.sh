#!/usr/bin/env sh

NOTIFY_ICON=/usr/share/icons/arcolinux-candy-beauty/apps/16/albert.svg

update() {
    if ! updates_arch="$(checkupdates | wc -l)"; then
        updates_arch=0
    fi

    if ! updates_aur="$(yay -Qum 2>/dev/null | wc -l)"; then
        updates_aur=0
    fi

    UPDATES=$((updates_arch + updates_aur))
}

notify() {
    if command -v notify-send &>/dev/null; then
        if (( UPDATES > 31 )); then
            notify-send -u normal -i $NOTIFY_ICON "$UPDATES New packages"
            echo
        elif (( UPDATES > 3 )); then
            notify-send -u low -i $NOTIFY_ICON "$UPDATES New packages"
        fi
    fi
}

while true; do
    update
    notify

    if (( UPDATES == 0 )); then
        echo " 0"
        sleep 900
    fi

    while (( UPDATES > 0 )); do
        echo " $UPDATES"
        sleep 900
        update
    done
done
