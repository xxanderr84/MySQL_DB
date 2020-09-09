--Определить кто больше поставил лайков (всего) - мужчины или женщины?
select if(gender = 'f', 'Женщины','Мужчины') as Пол, count(1) as Количество
from (select (select gender from users where id = profile_id) as gender
	  from likes_posts) a
group by gender
order by count(1) desc
limit 1