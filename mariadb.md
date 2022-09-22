# MySQL/MariaDB Cheat Sheet

## Setting up a docker instance

I assume you already have installed docker in your system. Remember that **sudo** may be needed for linux systems.

---
### **Install and run a Docker container**
Download mariadb image from the docker hub repo.
```ps
docker pull mariadb
```
Run a permanent container (Note: there are other options to configure if you wish, [check in here](https://hub.docker.com/_/mariadb))
```ps
docker run --detach --name containername -p 3306:3306 -e MARIADB_ROOT_PASSWORD='passroot' mariadb:latest
````
---
### **Configure your running instance**

Log in into the container shell as root.
```ps
docker exec -u 0 -it containername bash
````
Enter in the mysql client.
```ps
mysql -u root -p
```
Create a user with who you can log in with from another hosts than localhost.
```sql
CREATE USER 'amigo'@'%' IDENTIFIED BY 'amigopasswd';
```
Grant administrator's privileges for this user.
```sql
GRANT ALL PRIVILEGES ON *.* TO 'amigo';
```

---
### **Enjoy it!**
> Now you can use a database meneger to have fun with your mariadb.

[***Beyound***](mariadb.sql)