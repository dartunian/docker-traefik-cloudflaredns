# docker-traefik-cloudflaredns

Add a `.env` file with the following:

```
COMPOSE_PROJECT_NAME=TraefikProject
CF_API_EMAIL=
CF_API_KEY=
DOMAIN_1=
DOMAIN_2=
TZ=
```
Timezone in PHP time e.g. `America/Los_Angeles`

## Traefik
`api.DOMAIN_1`

Create user in `/shared/.htpassword`

## Authelia
`login.DOMAIN_1`

Create secrets for `/secrets/authelia_jwt_secret` and `/secrets/authelia_session_secret`

Replace default user in `/authelia/users_database.yml`

Replace `${DOMAIN_1}` in `/authelia/configuration.yml` with your 'DOMAIN_1'

## Hastatic
`web.DOMAIN_1`
To serve static websites:

Create a directory with the same name as your `DOMAIN_1` and copy all website files to this directory.

## Filebrowser
`files.DOMAIN_1`