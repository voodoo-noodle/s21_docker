FROM nginx
USER root
WORKDIR /home/
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./main.c .
COPY ./run.sh .
RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev; \
    apt-get clean; \
    chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /home; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    rm -rf /var/lib/apt/lists/*; \
    chmod u-s /usr/bin/su; \
    chmod u-s /usr/bin/mount; \
    chmod u-s /usr/bin/gpasswd; \
    chmod g-s /usr/bin/chage; \
    chmod g-s /usr/sbin/pam_extrausers_chkpwd; \
    chmod g-s /usr/sbin/unix_chkpwd; \
    chmod g-s /usr/bin/expiry; \
    chmod u-s /usr/bin/chfn; \
    chmod u-s /usr/bin/chsh; \
    chmod u-s /usr/bin/passwd; \
    chmod u-s /usr/bin/newgrp; \
    chmod u-s /usr/bin/umount; \
    chmod g-s /usr/bin/wall
USER nginx
ENTRYPOINT ["sh", "./run.sh"]
HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost/ || exit 1
