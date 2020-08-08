**CREATE A DATABASE, CREATE USER AND GRANT THEM PRIVILEGES**

```
CREATE DATABASE db_connect;
USE db_connect;
CREATE USER 'splunk_user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON db_connect.* TO 'splunk_user'@'localhost';
```
