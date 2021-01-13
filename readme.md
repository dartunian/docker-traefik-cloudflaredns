Add a `.env` file with the following:

```
COMPOSE_PROJECT_NAME=TraefikProject
CF_API_EMAIL=
CF_API_KEY=
DOMAIN_1=
DOMAIN_2=
```

Create secrets for `/secrets/authelia_jwt_secret` and `/secrets/authelia_session_secret`

Create user in `/shared/.htpassword`

Replace `${DOMAIN_1}` in `/authelia/configuration.yml` with your domain