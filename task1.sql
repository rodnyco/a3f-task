CREATE DATABASE IF NOT EXISTS test_contacts;

CREATE TABLE IF NOT EXISTS contacts (
  id   MEDIUMINT NOT NULL,
  name CHAR(30)  NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO contacts (id, name) 
VALUES
	(1, 'Вова'),
	(2, 'Миша'),
	(3, 'Маша'),
	(4, 'Паша'),
	(5, 'Андрей'),
	(6, 'Катя'),
	(7, 'Лена'),
	(8, 'Артем'),
	(9, 'Игорь'),
	(10, 'Полина');


CREATE TABLE IF NOT EXISTS contact_friends (
  id                 MEDIUMINT NOT NULL AUTO_INCREMENT,
  contanct_id        MEDIUMINT NOT NULL,
  friend_contanct_id MEDIUMINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (contanct_id)        REFERENCES contacts (id) ON DELETE CASCADE,
  FOREIGN KEY (friend_contanct_id) REFERENCES contacts (id) ON DELETE CASCADE
);

INSERT INTO contact_friends (contanct_id, friend_contanct_id) 
VALUES
	(1, 2),
	(1, 3),
	(1, 6),
	(1, 10),
	(3, 1),
	(3, 6),
	(3, 10),
	(6, 1),
	(6, 2),
	(6, 3),
	(6, 4),
	(6, 5),
	(6, 7),
	(6, 8),
	(6, 9),
	(6, 10),
	(8, 1),
	(8, 3),
	(10, 1),
	(10, 2),
	(10, 4),
	(10, 5),
	(10, 8),
	(10, 9);
