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


INSERT INTO tb_course (name,img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://www.publicdomainpictures.net/pictures/390000/nahled/course-introduction.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsKrydPFGvBDucM8_DhqgzpW5ojL-rY1-X1w&s');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2025-08-28T11:45:30.12345Z', TIMESTAMP WITH TIME ZONE '2025-08-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2025-09-28T11:45:30.12345Z', TIMESTAMP WITH TIME ZONE '2025-09-20T03:00:00Z', 1);


INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Notification test', TIMESTAMP WITH TIME ZONE '2025-08-20T03:00:00Z', false,  'Test route', 1);


INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Classes HTML', 'Main classes of the course HTML', 1, 'https://www.publicdomainpictures.net/pictures/390000/nahled/course-introduction.jpg', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsKrydPFGvBDucM8_DhqgzpW5ojL-rY1-X1w&s', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Forum', 'For questions', 2, 'https://www.publicdomainpictures.net/pictures/390000/nahled/course-introduction.jpg', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsKrydPFGvBDucM8_DhqgzpW5ojL-rY1-X1w&s', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Bonus lives', 'Exclusive lives', 3, 'https://www.publicdomainpictures.net/pictures/390000/nahled/course-introduction.jpg', 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsKrydPFGvBDucM8_DhqgzpW5ojL-rY1-X1w&s', 1);