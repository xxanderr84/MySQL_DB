 --Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
 --Поля from, to и label содержат английские названия городов, поле name — русское.
 --Выведите список рейсов flights с русскими названиями городов.
 select f.id, c1.name, c2.name
 from flights f
      left join cities c1 on f.from = c1.label
      left join cities c2 on f.to = c2.label