--Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
select distinct u.id, u.name
from users u
	 left join orders o on u.id = o.user_id
where o.created_at is not null