#!/bin/bash


service_name="Passwords backup"
usb_backup_device_uuid="9644-1C165"
password_db_path="${HOME}/Documents/KeepassXC/Passwords.kdbx"

while true; do
  inotifywait -m -e modify "${password_db_path}"
  if [[ ! $? -eq 0 ]]; then
    notify-send "inotifywait error occurred."
    exit 1
  fi

  notification_id=-1
  notification_timeout_s=5
  notification_timeout_ms=`echo "${notification_timeout_s}\*1000" | bc`
  while true; do
    if [ notification_id -eq -1 ]; then
      notification_id=`notify-send -u critical "${service_name}" "PLUGIN THE BACKUP USB DRIVE FOR FUCKS SAKE" -p -t ${notification_timeout_ms}`
    else
      notify-send -r ${notification_id} 
    fi
    [[ -f /dev/disk/by-id/${usb_backup_device_uuid} ]] && break
  done

done

