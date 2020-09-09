--Пусть задан некоторый пользователь.
--Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
select (select concat(surname, ' ', name) from users b where b.id = from_user_id) as Пользователь
from messages
where to_user_id = 2 and from_user_id in
	  (select initiator_user_id
       from friend_requests
 	   where status = 'approved'
             and target_user_id =2
       union
       select target_user_id
       from friend_requests
 	   where status = 'approved'
             and initiator_user_id=2
       )
group by from_user_id
order by count(1) desc
limit 1