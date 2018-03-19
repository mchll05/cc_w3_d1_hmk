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
  id SERIAL8,
  name VARCHAR(255),
  wallet INT,
  room_id INT8 REFERENCES room(id)
-- fav_song VARCHAR8 REFERENCE songs(id)
);
--
CREATE TABLE songs (
  id SERIAL8,
  name VARCHAR(255),
  artist VARCHAR(255)
);


INSERT INTO room (room_name, entry_fee, capacity) VALUES ('sky', 5, 5);
INSERT INTO room (room_name, entry_fee, capacity) VALUES ('space', 5, 5);
INSERT INTO room (room_name, entry_fee, capacity) VALUES ('forest', 5, 5);
INSERT INTO room (room_name, entry_fee, capacity) VALUES ('beach', 10, 8);

INSERT INTO customers (name, wallet, room_id) VALUES ('Charles Manson', 100, 1);
INSERT INTO customers (name, wallet, room_id) VALUES ('Benito Mussilini', 50, 2);
INSERT INTO customers (name, wallet, room_id) VALUES ('Jack the Ripper', 10, 4);

INSERT INTO songs (name, artist) VALUES ('Smells like Teen Spirit', 'Nirvana');
INSERT INTO songs (name, artist) VALUES ('Supermodel of the World', 'Rupaul');
INSERT INTO songs (name, artist) VALUES ('Okay', 'Holy Ghost');


SELECT * FROM room;
SELECT * FROM customers;
SELECT * FROM songs;
