-- Users
INSERT INTO tb_user (id, name, email, password) VALUES (1, 'Alex', 'alex@example.com', '{noop}123456');
INSERT INTO tb_user (id, name, email, password) VALUES (2, 'Bob', 'bob@example.com', '{noop}123456');
INSERT INTO tb_user (id, name, email, password) VALUES (3, 'Maria Silva', 'maria@example.com', '{noop}123456');

-- Roles
INSERT INTO tb_role (id, authority) VALUES (1, 'ROLE_STUDENT');
INSERT INTO tb_role (id, authority) VALUES (2, 'ROLE_INSTRUCTOR');
INSERT INTO tb_role (id, authority) VALUES (3, 'ROLE_ADMIN');

-- User x Role (ManyToMany)
INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1); -- Alex is STUDENT
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1); -- Bob is an STUDENT
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2); -- Bob is also an INSTRUCTOR
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1); -- Maria is STUDENT
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2); -- Maria is also an INSTRUCTOR
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3); -- Maria is ADMIN
