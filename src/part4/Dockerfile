FROM nginx:1.25

COPY nginx.conf /etc/nginx/nginx.conf
COPY server.c /
COPY start.sh /

RUN adduser --disabled-password --gecos '' myuser; \
    chown -R myuser:myuser /etc/nginx/nginx.conf; \
    chown -R myuser:myuser /var/cache/nginx; \
    chown -R myuser:myuser /home; \
    apt-get update && \
    apt-get install -y gcc spawn-fcgi libfcgi-dev && \
    chmod +x /start.sh && \
    rm -rf /var/lib/apt/lists

USER myuser

ENTRYPOINT [ "/start.sh" ]

HEALTHCHECK NONE