# docker-traefik-cloudflaredns

#### A docker container with Traefik routing utilizing Cloudfare DNS for LE SSL. Authelia SSO integration pre-built. Hastatic web server addition (static HTML).

## Usage

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

### Traefik
`api.DOMAIN_1`

Create user in `/shared/.htpassword`

Add Pilot key to `/traefik/traefik.yml`

### Authelia
`login.DOMAIN_1`

Create secrets for `/secrets/authelia_jwt_secret` and `/secrets/authelia_session_secret`

Replace default user in `/authelia/users_database.yml`

Replace `${DOMAIN_1}` in `/authelia/configuration.yml` with your 'DOMAIN_1'

### Hastatic
`DOMAIN_1`

To serve static websites:

Create a directory with the same name as your `DOMAIN_1` and copy all website files to this directory.

## Daux
`docs.DOMAIN_1`

<hr>

Special thanks to @AstralDestiny (https://github.com/AstralDestiny)