@REM # ghcr
@REM docker pull ghcr.io/logto-io/logto:latest
@REM # DockerHub
@REM docker pull svhd/logto:latest
logto db seed

docker run --name logto -p 3001:3001 -p 3002:3002 -e TRUST_PROXY_HEADER=1 -e ENDPOINT=https://dev-logto -e ADMIN_ENDPOINT=https://dev.logto-admin -e DB_URL=postgres://postgres:p0stgr3s@postgres:5432/logto ghcr.io/logto-io/logto:latest