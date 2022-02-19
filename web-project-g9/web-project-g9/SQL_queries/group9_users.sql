CREATE TABLE `users` (
  `email` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE (`email`)
)



INSERT INTO group9.users (email, first_name, last_name, phone_number, password) VALUES ('adi@gmail.com', 'עדי', 'אלבז', '0523415376', '73623t1254');
INSERT INTO group9.users (email, first_name, last_name, phone_number, password) VALUES ('anatoli@gmail.com', 'אנטולי', 'טאקלוב', '0526342373', 'yhgt65732d');
INSERT INTO group9.users (email, first_name, last_name, phone_number, password) VALUES ('michal@gmail.com', 'מיכל', 'שדה', '0525284245', 'gef3245gv');
INSERT INTO group9.users (email, first_name, last_name, phone_number, password) VALUES ('nadav@gmail.com', 'נדב', 'דויד', '0501114444', '1234567890');
INSERT INTO group9.users (email, first_name, last_name, phone_number, password) VALUES ('nisim@gmail.com', 'ניסים', 'טאק', '0547283915', '876gb3u84');
INSERT INTO group9.users (email, first_name, last_name, phone_number, password) VALUES ('noa@gmail.com', 'נועה', 'מתתיהו', '0543759207', '738yy12314');
INSERT INTO group9.users (email, first_name, last_name, phone_number, password) VALUES ('noma@gmail.com', 'שירה', 'שטיינבוך', '0541737952', 'asfd2314aa');
INSERT INTO group9.users (email, first_name, last_name, phone_number, password) VALUES ('prentzip@gmail.com', 'כוכבה', 'שביט', '0522224444', '71qaswasd4');
INSERT INTO group9.users (email, first_name, last_name, phone_number, password) VALUES ('ramzi@gmail.com', 'ראמזי', 'עבד-ראמזי', '0524256373', '13sdg22254');