# Activate python Environment
python -m venv env1
.\env1\Scripts\activate


streamlit run home.py


----PG----
docker run --name db -d -p 5432:5432 -e POSTGRES_USER=user -e POSTGRES_PASSWORD=password -e POSTGRES_DB=db postgres:alpine

docker run --name db -d -p 5432:5432 -v /C:/Users/anupa/OneDrive/Documents/Docker/pgvolume:/var/lib/postgresql/data -e POSTGRES_USER=user -e POSTGRES_PASSWORD=password -e POSTGRES_DB=pgdb postgres:alpine

named volume: managed by docker in host system. But no specific user directory is provided
docker run --name db -d -p 5432:5432 -v pg-data:/var/lib/postgresql/data -e POSTGRES_USER=user -e POSTGRES_PASSWORD=password -e POSTGRES_DB=pgdb postgres:alpine


docker run --name pgadmin -d -p 5050:80 -e PGADMIN_DEFAULT_EMAIL=user@abc.com -e PGADMIN_DEFAULT_PASSWORD=password --link db dpage/pgadmin4

while connecting to database using pgadmin brower from docker hostname should be docker name which is db in above example, the maintenance database is pgdb
while connecting to database using pgadmin at host system hostname should be localhost and port number is host port, the maintenance database is pgdb

----------

docker log -f <container name/id>
docker exec -it <container name/id> bash



docker build -t scm-delivery-note:slim-v1.3 .

docker compose -f scm-delvdb.yaml up -d