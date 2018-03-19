DROP TABLE songs;
DROP TABLE customers;
DROP TABLE room;


CREATE TABLE room (
  id SERIAL8 PRIMARY KEY,
  room_name VARCHAR(255),
  entry_fee INT,
  capacity INT
);

CREATE TABLE customers (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  wallet INT,
  room_id INT8 REFERENCES room(id)
);
--
CREATE TABLE songs (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  artist VARCHAR(255),
  fav_id INT8 REFERENCES customers(id)
);


INSERT INTO room (room_name, entry_fee, capacity) VALUES ('sky', 5, 5);
INSERT INTO room (room_name, entry_fee, capacity) VALUES ('space', 5, 5);
INSERT INTO room (room_name, entry_fee, capacity) VALUES ('forest', 5, 5);
INSERT INTO room (room_name, entry_fee, capacity) VALUES ('beach', 10, 8);

INSERT INTO customers (name, wallet, room_id) VALUES ('Charles Manson', 100, 1);
INSERT INTO customers (name, wallet, room_id) VALUES ('Benito Mussilini', 50, 2);
INSERT INTO customers (name, wallet, room_id) VALUES ('Jack the Ripper', 10, 4);

INSERT INTO songs (name, artist, fav_id) VALUES ('Smells like Teen Spirit', 'Nirvana', 1);
INSERT INTO songs (name, artist, fav_id) VALUES ('Supermodel of the World', 'Rupaul', 2);
INSERT INTO songs (name, artist, fav_id) VALUES ('Okay', 'Holy Ghost', 3);

UPDATE room
  SET room_name = 'ocean'
  WHERE room_name = 'space';

UPDATE customers
  SET wallet = 60
  WHERE name = 'Benito Mussilini';

UPDATE songs
  SET name = 'Sissy that walk'
  WHERE name = 'Supermodel of the World';

SELECT * FROM room;
SELECT * FROM customers;
SELECT * FROM songs;

SELECT name FROM customers;
SELECT * FROM customers WHERE room_id = 1;
