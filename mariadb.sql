--Criar usuário
CREATE USER `amigo`@`%` IDENTIFIED BY 'amigopasswd';

--Alterar a senha do usuário
ALTER USER 'amigo'@'%' IDENTIFIED BY 'amigopassword2';

---Remover usuário
DROP USER 'amigo'@'%';

---------------------------------------------------
--Renomear usuário ou alterar o seu local de acesso

--Para login apenas local
RENAME USER 'amigo'@'%' TO 'amigo'@'localhost';

---Para login de um range específico
RENAME USER 'amigo'@'localhost' TO 'amigo'@'192.168.253.%';

---Para login de qualquer lugar
RENAME USER 'amigo'@'192.168.253.%' TO 'amigo'@'%';

---------------------------------------------------

---Dar permissão de root à um usuário 
GRANT ALL PRIVILEGES ON *.* TO 'amigo';

---Dar permissão ao usuário para acessar um banco
GRANT ALL PRIVILEGES ON TEST.* TO 'amigo';

---Tirar a permissão de um usuário acessar um banco
REVOKE ALL PRIVILEGES ON TEST.* FROM 'amigo';

---Condecer uma permissão
GRANT CREATE ON *.* TO 'amigo'@'%';

---Condecer mais de uma permissão para um usu[ario]
GRANT INSERT, UPDATE ON TEST.* TO 'amigo'@'%';

---Criar banco de dados
CREATE DATABASE `TEST` DEFAULT CHARACTER SET utf8mb4;

---Deletar banco de dados
DROP DATABASE TEST;

---Ver permissões
SHOW GRANTS FOR 'amigo'@'localhost';

---Recarregar os novos privilégios(Usado depois do comando GRANT e REVOKE)
FLUSH PRIVILEGES;
```

## Use

```sql
---Exibir bancos de dados:
SHOW DATABASES;

---Selecionar um banco de dados
USE TEST;

---Criar tabela em um banco:
CREATE TABLE tabela(id INT AUTO_INCREMENT PRIMARY KEY, nome varchar(100) NOT NULL);

---Alterar
ALTER TABLE tabela ADD numero INTEGER;
ALTER TABLE tabela DROP COLUMN numero;

---Esvaziar tabela
TRUNCATE TABLE tabela;

---Apagar tabela
DROP TABLE tabela;

---Visualizar colunas da tabela
SHOW FULL COLUMNS FROM tabela;

---Visualizar colunas da tabela com um filtro
SHOW COLUMNS FROM tabela WHERE Type like 'VARCHAR%';

---Atalho para show columns:
DESCRIBE tabela;