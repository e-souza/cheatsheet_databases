# MySQL/MariaDB Cheat Sheet

## Docker install

```sh
sudo docker pull mariadb

sudo docker run --detach --name containername -p 3306:3306 --env MARIADB_USER=user --env MARIADB_PASSWORD='passuser' --env MARIADB_ROOT_PASSWORD='passroot' mariadb:latest
#OR (recomended):
sudo docker run --detach --name containername -p 3306:3306 -e MARIADB_ROOT_PASSWORD='passroot' mariadb:latest

```

## Docker SGBD access

```sh
sudo docker exec -u 0 -it containername bash
mysql -u root -p
#passroot
```

## Use it

```sql
--Useful MySQL (Mariadb) commands:

# Criar usuário
CREATE USER `amigo`@`%` IDENTIFIED BY 'amigopasswd';

# Remover usuário
DROP USER 'amigo'@'%';

# Criar banco de dados
CREATE DATABASE `TEST` DEFAULT CHARACTER SET utf8mb4;

# Deletar banco de dados
DROP DATABASE TEST;

# Dar permissão ao usuário para acessar um banco
GRANT ALL PRIVILEGES ON TEST.* TO 'amigo';

# Tirar a permissão de um usuário acessar um banco
REVOKE ALL PRIVILEGES ON TEST.* FROM 'amigo';

# Recarregar os novos privilégios(Usado depois do comando GRANT e REVOKE)
FLUSH PRIVILEGES;
```