--Таблица users была неудачно спроектирована.
--Записи created_at и updated_at были заданы типом VARCHAR
--и в них долгое время помещались значения в формате 20.10.2017 8:10.
--Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.
ALTER TABLE users ADD created_at_tmp DATETIME, updated_at_tmp DATETIME;
UPDATE users
SET created_at_tmp = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'),
    updated_at_tmp = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i');
ALTER TABLE users
    DROP created_at, DROP updated_at,
    RENAME COLUMN created_at_tmp TO created_at, RENAME COLUMN updated_at_tmp TO updated_at;