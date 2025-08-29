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

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Chapter 1', 'Getting start', 1, 'https://www.publicdomainpictures.net/pictures/390000/nahled/course-introduction.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Chapter 2', 'Learning about tags', 1, 'https://www.publicdomainpictures.net/pictures/390000/nahled/course-introduction.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Chapter 3', 'What is HTML?', 1, 'https://www.publicdomainpictures.net/pictures/390000/nahled/course-introduction.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2025-08-28T13:45:30.12345Z', null, true, false)
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2025-08-28T13:45:30.12345Z', null, true, false)

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Class 1 from Chapter 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1,'Introduction', 'https://www.youtube.com/watch?v=it1rTvBcfRg&list=PLP9IO4UYNF0VdAajP_5pYG-jG2JRrG72s');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Class 2 from Chapter 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2,'Editors', 'https://www.youtube.com/watch?v=bBP0ckEln4Y&list=PLP9IO4UYNF0VdAajP_5pYG-jG2JRrG72s&index=2');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Class 3 from Chapter 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3,'Elements', 'https://www.youtube.com/watch?v=vIoO52MdZFE&list=PLP9IO4UYNF0VdAajP_5pYG-jG2JRrG72s&index=3');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Test from Chapter 1', 4, 1);
INSERT INTO tb_task (id, description, question_count, approval_count, weight, due_date) VALUES (4,'Multiple choice exam', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2025-08-29T13:00:00.00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);




INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('First feedback from task: please review it', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Second feedback: please review it', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Third feedback: please review it', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/LeonardodCastro/mylearn', TIMESTAMP WITH TIME ZONE '2020-12-10T10:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Title from topic: 2', 'Body from topic: 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Title from topic: 3', 'Body from topic: 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Title from topic: 4', 'Body from topic: 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Title from topic: 6', 'Body from topic: 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Title from topic: 5', 'Body from topic: 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Title from topic: 1', 'Body from topic: 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Try reboot your PC!', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('It works, thanks a lot!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);