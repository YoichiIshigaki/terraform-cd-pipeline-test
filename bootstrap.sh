#!/bin/sh
set -e

# add container metadata to index_1.html
echo "<pre>" >> /usr/local/apache2/htdocs/index_1.html
curl $ECS_CONTAINER_METADATA_URI | jq '.' >> /usr/local/apache2/htdocs/index_1.html
echo "</pre>" >> /usr/local/apache2/htdocs/index_1.html

# run httpd
httpd-foreground