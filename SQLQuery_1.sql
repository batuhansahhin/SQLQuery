CREATE DATABASE testdb;

\c testdb;

CREATE TABLE employee (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  birthday DATE NOT NULL,
  email VARCHAR(100) NOT NULL
);

INSERT INTO employee (name, birthday, email)
SELECT 
    fake.name(), 
    fake.date_between('-60y', '-20y'), 
    fake.email() 
FROM generate_series(1, 50);

-- name sütununu güncellemek için
UPDATE employee SET name = 'John Doe' WHERE id = 1;

-- birthday sütununu güncellemek için
UPDATE employee SET birthday = '1990-01-01' WHERE id = 2;

-- email sütununu güncellemek için
UPDATE employee SET email = 'jane.doe@example.com' WHERE id = 3;

-- name ve birthday sütunlarını güncellemek için
UPDATE employee SET name = 'Bob Smith', birthday = '1980-01-01' WHERE id = 4;

-- name ve email sütunlarını güncellemek için
UPDATE employee SET name = 'Alice Brown', email = 'alice.brown@example.com' WHERE id = 5;

-- id = 1 olan satırı silmek için
DELETE FROM employee WHERE id = 1;

-- id = 2 olan satırı silmek için
DELETE FROM employee WHERE id = 2;

-- id = 3 olan satırı silmek için
DELETE FROM employee WHERE id = 3;

-- id = 4 olan satırı silmek için
DELETE FROM employee WHERE id = 4;

-- id = 5 olan satırı silmek için
DELETE FROM employee WHERE id = 5;
