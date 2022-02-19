CREATE TABLE `contact_us` (
  `email` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE (`email`)
);




INSERT INTO group9.contact_us (email, first_name, last_name, phone_number) VALUES ('adi@gmail.com', 'עדי', 'אלבז', '0523415376');
INSERT INTO group9.contact_us (email, first_name, last_name, phone_number) VALUES ('anatoli@gmail.com', 'אנטולי', 'טאקלוב', '0526342373');
INSERT INTO group9.contact_us (email, first_name, last_name, phone_number) VALUES ('michal@gmail.com', 'מיכל', 'שדה', '0525284245');
INSERT INTO group9.contact_us (email, first_name, last_name, phone_number) VALUES ('nadav@gmail.com', 'נדב', 'דויד', '0501114444');
INSERT INTO group9.contact_us (email, first_name, last_name, phone_number) VALUES ('nisim@gmail.com', 'ניסים', 'טאק', '0547283915');
INSERT INTO group9.contact_us (email, first_name, last_name, phone_number) VALUES ('noa@gmail.com', 'נועה', 'מתתיהו', '0543759207');
INSERT INTO group9.contact_us (email, first_name, last_name, phone_number) VALUES ('noma@gmail.com', 'שירה', 'שטיינבוך', '0541737952');
INSERT INTO group9.contact_us (email, first_name, last_name, phone_number) VALUES ('prentzip@gmail.com', 'כוכבה', 'שביט', '0522224444');
INSERT INTO group9.contact_us (email, first_name, last_name, phone_number) VALUES ('ramzi@gmail.com', 'ראמזי', 'עבד-ראמזי', '0524256373');
