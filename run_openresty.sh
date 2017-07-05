#! /bin/bash

docker stop openresty
docker rm openresty

docker run -itd --name openresty -p 80:80 \
-v $(pwd)/conf:/usr/local/openresty/nginx/conf \
-v $(pwd)/logs:/usr/local/openresty/nginx/logs \
openresty/openresty
