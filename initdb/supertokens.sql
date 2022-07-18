CREATE DATABASE supertokens;

CREATE USER 'supertokens_users'@'%'
    IDENTIFIED BY 'Acb3ds32Lq';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP
  ON supertokens.*
  TO 'supertokens_users'@'%';

