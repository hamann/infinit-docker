# Import pre-generated user authentication files
# /infinit_config should be mounted using docker -v

infinit-user --import -i /infinit_config/user.json
infinit-network --import --as $USER -i /infinit_config/network.json

infinit-network --link --as $USER --name $NETWORK

infinit-volume --mount --as $USER --name $VOLUME --async --cache --port $PORT --mountpoint /var/infinit
