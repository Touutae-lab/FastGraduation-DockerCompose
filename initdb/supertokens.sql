CREATE DATABASE IF NOT EXISTS supertokens
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

CREATE USER 'supertokens_users'@'%'
    IDENTIFIED BY 'Acb3ds32Lq';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP
  ON supertokens.*
  TO 'supertokens_users'@'%';

