#!/bin/bash
# Script is running on docker container initialization

# Replace URL in config.js and config.php files
if [[ -n "$RPC_NODE_URL" ]];
then
  sed -i "s|var api = '.*';|var api = '${RPC_NODE_URL}';|g" /var/www/html/config.js
  sed -i "s|\$node = '.*';|\$node = '${RPC_NODE_URL}';|g" /var/www/html/config.php
fi