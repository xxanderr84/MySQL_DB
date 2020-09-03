--Подсчитайте средний возраст пользователей в таблице users.
select avg(DATEDIFF(NOW(),birthday_at)/365) as avg_age
from users