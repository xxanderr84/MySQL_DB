--Пусть в таблице users поля created_at и updated_at оказались незаполненными.
--Заполните их текущими датой и временем.
update users
set created_at = NOW(),
	updated_at = NOW();