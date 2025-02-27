FROM nginx

COPY server.c /home/server.c
COPY /nginx/nginx.conf /etc/nginx/

RUN apt update && \
	apt-get install -y gcc && \
	apt-get install -y spawn-fcgi && \
	apt-get install -y libfcgi-dev 

RUN gcc /home/server.c -o /home/a -lfcgi

ENTRYPOINT ["/bin/bash", "-c", "spawn-fcgi -p 8080 /home/a && nginx -g 'daemon off;'"]