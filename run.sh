infinit-user --import -i /infinit/user.json
infinit-network --fetch --as $USER
infinit-volume --fetch --as $USER

if [ $MODE -eq "server" ]; then
  if infinit-storage --list | grep local; then
    echo "Using local storage"
  else
    echo "Creating infinit storage area /infinit_storage"
    infinit-storage --create --filesystem --name local --path /infinit_storage
  fi
  NETWORK_OPTIONS="--storage local"
fi

if infinit-network --list --as $USER | grep $NETWORK | grep "not linked"; then
  infinit-network --link --as $USER --name $NETWORK $NETWORK_OPTIONS
fi

infinit-volume --mount --as $USER --name $VOLUME $OPTIONS --publish --mountpoint /infinit_mount
