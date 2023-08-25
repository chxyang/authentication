@REM docker-compose down -v
docker-compose up --build -d

# Deployment for Logto with docker compose
1. create a new dcokercompose file
2. copy template docker compose file of logto with postgresql
**curl -fsSL https://raw.githubusercontent.com/logto-io/logto/HEAD/docker-compose.yml | docker compose -p logto -f - up**
3. write run.cmd and run it, can also replace with the following command docker-compose up --build -d directly
4. open browser and visit http://localhost:3002
5. register a new admin account and login