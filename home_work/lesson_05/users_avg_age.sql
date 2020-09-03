--Подсчитайте средний возраст пользователей в таблице users.
select avg(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) as avg_age
from users