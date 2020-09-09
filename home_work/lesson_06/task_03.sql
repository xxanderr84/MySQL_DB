--Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
select count(1)
from likes_posts
where
	profile_id in(select id
                  from (select id, birthday
					    from users
						order by birthday desc
						limit 10
					   ) a
				  )