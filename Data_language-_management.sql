use  language_center_management;
-- DROP DATABASE language_center_management;

insert into account (account_id, username, password, fullname, role_id, gender, dob, address, phone, image, email, amount, `desc`)
values('1', 'admin', 'dattt', 'Trịnh Tiến Đạt', 1, 1,'2001-01-09', 'Ha Noi', '0373262067', null,'trinhtiendat012001@gmail.com',  1, null);
insert into account (account_id, username, password, fullname, role_id, gender, dob, address, phone, image, email, amount, `desc`)
values('2', 'teacher', 'tuda', 'Dương Anh Tú', 2, 0,'2001-01-09', 'Ha Noi', '0373262067', null,'duonganhtu260302@gmail.com',  1, null);
insert into account (account_id, username, password, fullname, role_id, gender, dob, address, phone, image, email, amount, `desc`)
values('3', 'student', 'hoangtc', 'Tô Chính Hoàng', 3, 1,'2001-01-09', 'Ha Noi', '0373262067', null,'chinhhoangto@gmail.com',  1, null);
insert into account (account_id, username, password, fullname, role_id, gender, dob, address, phone, image, email, amount, `desc`)
values('4', 'student', 'thangtn', 'Trần Ngọc Thắng', 3, 1,'2001-01-09', 'Ha Noi', '0373262067', null,'trinhtiendat012001@gmail.com',  1, null);
insert into account (account_id, username, password, fullname, role_id, gender, dob, address, phone, image, email, amount, `desc`)
values('5', 'student', 'anhlv', 'Lê Vân Anh', 3, 0,'2001-01-09', 'Ha Noi', '0373262067', null,'anhlevan20232001@gmail.com',  1, null);

insert into department (department_id, department_name)
values('1', 'Tiếng Nhật');
insert into department (department_id, department_name)
values('2', 'Tiếng Anh');
insert into department (department_id, department_name)
values('3', 'Tiếng Pháp');
insert into department (department_id, department_name)
values('4', 'Tiếng Hàn');

insert into level (level_id, level)
values('1', 'N5');
insert into level (level_id, level)
values('2', 'N4');
insert into level (level_id, level)
values('3', 'N3');
insert into level (level_id, level)
values('4', 'N2');
insert into level (level_id, level)
values('5', 'N1');

insert into course (course_id, course_name, price, image, language, description, is_sale, update_at, department_id, account_id, level_id,status)
values('1', 'Tiếng Nhật N5', 500000, null, 'Tiếng Nhật', null, 450000, '2023-09-28', 1, 3, 1, 1);
insert into course (course_id, course_name, price, image, language, description, is_sale, update_at, department_id, account_id, level_id,status)
values('2', 'Tiếng Nhật N5', 500000, null, 'Tiếng Nhật', null, 450000, '2023-09-28', 1, 3, 1, 1);
insert into course (course_id, course_name, price, image, language, description, is_sale, update_at, department_id, account_id, level_id,status)
values('3', 'Tiếng Nhật N5', 500000, null, 'Tiếng Nhật', null, 450000, '2023-09-28', 1, 4, 1, 1);
insert into course (course_id, course_name, price, image, language, description, is_sale, update_at, department_id, account_id, level_id,status)
values('4', 'Tiếng Nhật N4', 500000, null, 'Tiếng Nhật', null, 450000, '2023-09-28', 1, 5, 2, 1);

insert into account_course (course_id, account_id)
values('1', '3');
insert into account_course (course_id, account_id)
values('2', '4');
insert into account_course (course_id, account_id)
values('3', '5');
insert into account_course (course_id, account_id)
values('4', '5');

insert into lecture (lecture_id, lecture_name, course_id, create_at, description,status)
values('1', 'tuda', 1, '2023-09-28', null,1);

insert into lecture_account (account_id, lecture_id)
values('2', '1');

insert into lesson (lesson_id, lesson_name,video, main, lecture_id, update_at, status)
values('1', 'lesson 1', '/assent', null, 1,'2023-09-28', 1);
insert into lesson (lesson_id, lesson_name, video, main, lecture_id, update_at, status)
values('2', 'lesson 2', '/assent', null, 1,'2023-09-28', 1);
insert into lesson (lesson_id, lesson_name, video, main, lecture_id, update_at, status)
values('3', 'lesson 3', '/assent', null, 1,'2023-09-28', 1);
insert into lesson (lesson_id, lesson_name, video, main, lecture_id, update_at, status)
values('4', 'lesson 4', '/assent', null, 1,'2023-09-28', 1);
insert into lesson (lesson_id, lesson_name, video, main, lecture_id, update_at, status)
values('5', 'lesson 5', '/assent', null, 1,'2023-09-28', 1);
insert into lesson (lesson_id, lesson_name, video, main, lecture_id, update_at, status)
values('6', 'lesson 6', '', null, 1,'2023-09-28', 1);
insert into lesson (lesson_id, lesson_name, video, main, lecture_id, update_at, status)
values('7', 'lesson 7', '/assent', null, 1,'2023-09-28', 1);
insert into lesson (lesson_id, lesson_name, video, main, lecture_id, update_at, status)
values('8', 'lesson 8', '/assent', null, 1,'2023-09-28', 1);
insert into lesson (lesson_id, lesson_name, video, main, lecture_id, update_at, status)
values('9', 'lesson 9', '/assent', null, 1,'2023-09-28', 1);
insert into lesson (lesson_id, lesson_name, video, main, lecture_id, update_at, status)
values('10', 'lesson 10', '/assent', null, 1,'2023-09-28', 1);

INSERT INTO `language_center_management`.`exam` (`exam_id`, `exam_name`, `quantity`, `time`, `start_date`, `lecture_id`)
 VALUES (1, 'Test N5 day 1', 10, 30, '2023-10-01', 1);
 INSERT INTO `language_center_management`.`exam` (`exam_id`, `exam_name`, `quantity`, `time`, `start_date`, `lecture_id`)
 VALUES (2, 'Test N5 day 2', 10, 30, '2023-10-02', 1);
 INSERT INTO `language_center_management`.`exam` (`exam_id`, `exam_name`, `quantity`, `time`, `start_date`, `lecture_id`)
 VALUES (3, 'Test N5 day 3', 10, 30, '2023-10-03', 1);
 INSERT INTO `language_center_management`.`exam` (`exam_id`, `exam_name`, `quantity`, `time`, `start_date`, `lecture_id`)
 VALUES (4, 'Test N5 day 4', 10, 30, '2023-10-04', 1);
  INSERT INTO `language_center_management`.`exam` (`exam_id`, `exam_name`, `quantity`, `time`, `start_date`, `lecture_id`)
 VALUES (5, 'Final test', 20, 30, '2023-10-05', 1);
 
INSERT INTO `language_center_management`.`question` (`question_id`, `quiz`, `op1`, `op2`, `op3`, `op4`, `solution`, `lecture_id`)
 VALUES (1, 'それはわたし（ ）かさです。', 'を', 'が', 'の', 'も', 3, 1);
 INSERT INTO `language_center_management`.`question` (`question_id`, `quiz`, `op1`, `op2`, `op3`, `op4`, `solution`, `lecture_id`)
 VALUES (2, 'じてんしゃ（ ）学校へ行きます。', 'で', 'に', 'が', 'の', 1, 1);
 INSERT INTO `language_center_management`.`question` (`question_id`, `quiz`, `op1`, `op2`, `op3`, `op4`, `solution`, `lecture_id`)
 VALUES (3, '母はりょうり（ ）じょうずです。', 'を', 'が', 'で', 'に', 2, 1);
 INSERT INTO `language_center_management`.`question` (`question_id`, `quiz`, `op1`, `op2`, `op3`, `op4`, `solution`, `lecture_id`)
 VALUES (4, 'きょうしつにはだれ（ ）いませんでした。', 'に', 'は', 'も', 'が', 3, 1);
 INSERT INTO `language_center_management`.`question` (`question_id`, `quiz`, `op1`, `op2`, `op3`, `op4`, `solution`, `lecture_id`)
 VALUES (5, 'りょうり（ ）本をかいました。', 'と', 'の', 'が', 'を', 1, 1);
 INSERT INTO `language_center_management`.`question` (`question_id`, `quiz`, `op1`, `op2`, `op3`, `op4`, `solution`, `lecture_id`)
 VALUES (6, '10時（ ）あいましょう。', 'に', 'で', 'を', 'は', 1, 1);
 INSERT INTO `language_center_management`.`question` (`question_id`, `quiz`, `op1`, `op2`, `op3`, `op4`, `solution`, `lecture_id`)
 VALUES (7, 'あたらしいじしょ（ ）ほしいです。', 'を', 'に', 'が', 'で', 3, 1);
 INSERT INTO `language_center_management`.`question` (`question_id`, `quiz`, `op1`, `op2`, `op3`, `op4`, `solution`, `lecture_id`)
 VALUES (8, 'うち（ ）会社まで30分かかります。', 'には', 'から', 'へも', 'とは', 2, 1);
 INSERT INTO `language_center_management`.`question` (`question_id`, `quiz`, `op1`, `op2`, `op3`, `op4`, `solution`, `lecture_id`)
 VALUES (9, 'おなかが（ ）食べられません。', 'いたい', 'いたかかった', 'いたくて', 'いたくない', 2, 1);
INSERT INTO `language_center_management`.`question` (`question_id`, `quiz`, `op1`, `op2`, `op3`, `op4`, `solution`, `lecture_id`)
 VALUES (10, 'どこできっぷを（ ）いますか。', 'うって', 'うりて', 'うったり', 'うった', 3, 1);
 
 INSERT INTO `language_center_management`.`homework` (`homework_id`, `content`, `lesson_id`) 
 VALUES (1, 'Homework day 1', 1);
  INSERT INTO `language_center_management`.`homework` (`homework_id`, `content`, `lesson_id`) 
 VALUES (2, 'Homework day 2', 1);
  INSERT INTO `language_center_management`.`homework` (`homework_id`, `content`, `lesson_id`) 
 VALUES (3, 'Homework day 3', 1);
  INSERT INTO `language_center_management`.`homework` (`homework_id`, `content`, `lesson_id`) 
 VALUES (4, 'Homework day 4', 1);
  INSERT INTO `language_center_management`.`homework` (`homework_id`, `content`, `lesson_id`) 
 VALUES (5, 'Homework day 5', 1);
 INSERT INTO `language_center_management`.`homework` (`homework_id`, `content`, `lesson_id`) 
 VALUES (6, 'Homework day 6', 1);
  INSERT INTO `language_center_management`.`homework` (`homework_id`, `content`, `lesson_id`) 
 VALUES (7, 'Homework day 7', 1);
  INSERT INTO `language_center_management`.`homework` (`homework_id`, `content`, `lesson_id`) 
 VALUES (8, 'Homework day 8', 1);
  INSERT INTO `language_center_management`.`homework` (`homework_id`, `content`, `lesson_id`) 
 VALUES (9, 'Homework day 9', 1);
  INSERT INTO `language_center_management`.`homework` (`homework_id`, `content`, `lesson_id`) 
 VALUES (10, 'Homework day 10', 1);
 
INSERT INTO `language_center_management`.`account_lesson` (`course_id`, `account_id`, `lesson_id`) 
 VALUES (1, 3, 1);
INSERT INTO `language_center_management`.`account_lesson` (`course_id`, `account_id`, `lesson_id`) 
 VALUES (1, 3, 2);
INSERT INTO `language_center_management`.`account_lesson` (`course_id`, `account_id`, `lesson_id`) 
 VALUES (1, 3, 3);
INSERT INTO `language_center_management`.`account_lesson` (`course_id`, `account_id`, `lesson_id`) 
 VALUES (1, 3, 4);
INSERT INTO `language_center_management`.`account_lesson` (`course_id`, `account_id`, `lesson_id`) 
 VALUES (1, 3, 5);
INSERT INTO `language_center_management`.`account_lesson` (`course_id`, `account_id`, `lesson_id`) 
 VALUES (1, 3, 6);
INSERT INTO `language_center_management`.`account_lesson` (`course_id`, `account_id`, `lesson_id`) 
 VALUES (1, 3, 7);
INSERT INTO `language_center_management`.`account_lesson` (`course_id`, `account_id`, `lesson_id`) 
 VALUES (1, 3, 8);
INSERT INTO `language_center_management`.`account_lesson` (`course_id`, `account_id`, `lesson_id`) 
 VALUES (1, 3, 9);
INSERT INTO `language_center_management`.`account_lesson` (`course_id`, `account_id`, `lesson_id`) 
 VALUES (1, 3, 10);
 
INSERT INTO `language_center_management`.`order` (`order_id`, `order_date`, `total_price`, `account_id`) 
VALUES (1, '2023-09-28', 500000, 3);
INSERT INTO `language_center_management`.`order` (`order_id`, `order_date`, `total_price`, `account_id`) 
VALUES (2, '2023-09-28', 500000, 4);

INSERT INTO `language_center_management`.`order_detail` (`orderDetail_id`, `quantity`, `course_id`, `order_id`) 
VALUES (1, 1, 1, 1);
INSERT INTO `language_center_management`.`order_detail` (`orderDetail_id`, `quantity`, `course_id`, `order_id`) 
VALUES (2, 1, 1, 2);
 
 INSERT INTO `language_center_management`.`wishlist` (`account_id`, `course_id`) 
 VALUES (3, 1);
  INSERT INTO `language_center_management`.`wishlist` (`account_id`, `course_id`) 
 VALUES (3, 2);

 
 
 
 
 
 
 
 
 
 