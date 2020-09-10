--Выведите список товаров products и разделов catalogs, который соответствует товару.
select c.name, p.name, p.description, p.price
from products p
	 left join catalogs c on p.catalog_id= c.id