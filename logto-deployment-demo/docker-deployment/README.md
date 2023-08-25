#Deployment logto open source project with docker 
1. logto db seed
2. pull image 
```
# ghcr
docker pull ghcr.io/logto-io/logto:latest
# DockerHub
docker pull svhd/logto:latest
```

3. Map the container ports to Logto core and admin app, e.g., 3001:3001 and 3002:3002; and set the following environment variables to the container:
```
TRUST_PROXY_HEADER: 1 # Set to 1 if you have an HTTPS proxy (e.g. Nginx) in front of Logto
ENDPOINT: https://<your-logto-domain> # (Optional) Replace with your Logto endpoint URL if you are using a custom domain
ADMIN_ENDPOINT: https://<your-logto-admin-domain> # (Optional) Replace with your Logto admin URL if you are using a custom domain
DB_URL: postgres://username:password@your_postgres_url:port/db_name # Replace with your Postgres DSN
```

4. docker run 
```
docker run \
  --name logto \
  -p 3001:3001 \
  -p 3002:3002 \
  -e TRUST_PROXY_HEADER=1 \
  -e ENDPOINT=https://<your-logto-domain> \
  -e ADMIN_ENDPOINT=https://<your-logto-admin-domain> \
  -e DB_URL=postgres://username:password@your_postgres_url:port/db_name \
  ghcr.io/logto-io/logto:latest
````