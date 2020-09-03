--Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
--Следует учесть, что необходимы дни недели текущего года, а не года рождения.
select DAYOFWEEK(DATE_FORMAT(birthday_at, '2020-%m-%d')) as day_of_week, count(1)
from users
group by DAYOFWEEK(DATE_FORMAT(birthday_at, '2020-%m-%d'))