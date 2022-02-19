CREATE TABLE ask_doctor(
  `email` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `pet_type` varchar(45) NOT NULL,
  `message` varchar(400) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE (`email`)
);





INSERT INTO group9.ask_doctor (email, first_name, last_name, phone_number, pet_type, message) VALUES ('adi@gmail.com', 'עדי', 'אלבז', '0523415376', 'חתול', '?לחתול שלי יוסיפון יש בעיה בפרווה האם זה קשור לאוכל');
INSERT INTO group9.ask_doctor (email, first_name, last_name, phone_number, pet_type, message) VALUES ('michal@gmail.com', 'מיכל', 'שדה', '0525284245', 'כלב', 'הכלבה שלי בת 14 ויש לה קטרט האם כדאי לבצע הליך כלשהו?');
INSERT INTO group9.ask_doctor (email, first_name, last_name, phone_number, pet_type, message) VALUES ('nadav@gmail.com', 'נדב', 'דויד', '0501114444', 'כלב', 'לכלבה שלי יש דלקת חמורה בעין, מה עליי לעשות?');
INSERT INTO group9.ask_doctor (email, first_name, last_name, phone_number, pet_type, message) VALUES ('noa@gmail.com', 'נועה', 'מתתיהו', '0543759207', 'סוס', 'לסוסה שלי נשברה הרגל, מה עושים?');
INSERT INTO group9.ask_doctor (email, first_name, last_name, phone_number, pet_type, message) VALUES ('noma@gmail.com', 'שירה', 'שטיינבוך', '0541737952', 'אחר', 'לאיגואנה שלי יש דלקת בעין, האם זה יסתדר לבד או לבוא לטיפול?');
