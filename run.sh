infinit-user --import -i /infinit/user.json

if infinit-storage --list | grep local; then
  echo "Using local storage"
else
  echo "Creating infinit storage area /infinit_storage"
  infinit-storage --create --filesystem --name local --path /infinit_storage
fi

infinit-network --fetch --as $USER
infinit-volume --fetch --as $USER
infinit-network --link --as $USER --name $NETWORK --storage local

infinit-volume --mount --as $USER --name $VOLUME --allow-root-creation --publish --mountpoint /infinit_mount
