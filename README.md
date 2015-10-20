CREATE TABLE users (
  name VARCHAR(255),
  password VARCHAR(255),
  authority VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO users 
  (name, password, authority)
  values
  ('admin', 'admin', 'ROLE_ADMIN');

INSERT INTO users 
  (name, password, authority)
  values
  ('user', 'user', 'ROLE_USER');