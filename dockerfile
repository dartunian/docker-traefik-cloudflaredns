FROM traefik:v2.3
ARG DOMAIN_1
ARG DOMAIN_2
ARG PASSWORD
RUN mkdir /etc/traefik && \
    mkdir /etc/traefik/${DOMAIN_1} && \
    mkdir /etc/traefik/${DOMAIN_2} && \
    touch /etc/traefik/${DOMAIN_1}/acme.json && \
    touch /etc/traefik/${DOMAIN_2}/acme.json && \    
    chmod 600 /etc/traefik/${DOMAIN_1}/acme.json && \
    chmod 600 /etc/traefik/${DOMAIN_2}/acme.json