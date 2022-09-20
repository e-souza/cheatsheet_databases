--Comandos úteis pata o MySQL (Mariadb):

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