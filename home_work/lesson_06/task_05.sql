--Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
select (select concat(surname, ' ', name) from users b where b.id = a.user_id) as Пользователь
from (select from_user_id as user_id, id from messages
        union all
      select profile_id as user_id, id from likes_posts
        union all
      select user_id, id  from posts
      ) a
group by user_id
order by count(1)
limit 10