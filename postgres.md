# PostgreSQL Cheat Sheet

## ***Loading...***

## Install and run a Docker container
Download postgres image from the docker hub repo.
```sh
sudo docker pull postgres
```
Run a permanent container (Note: there are other options to configure if you wish)
```sh
sudo docker run --detach --name containername -p 5432:5432 -e POSTGRES_PASSWORD=mysecretpassword -d postgres
```
> Obs.: é recomendado excluir a linha acima do bash history.
## Configure your running instance

Log in into the container shell as root and configure a user.

```sh
sudo docker exec -u 0 -it containername bash

su postgres
psql
```
Or
```
sudo -u postgres psql
```
Create the new user
```
CREATE USER root SUPERUSER INHERIT CREATEDB CREATEROLE;
ALTER USER root PASSWORD 'password';
CREATE DATABASE "test";
GRANT ALL ON DATABASE "test" TO root;
\q

exit
```

## Use it

```sql

```
