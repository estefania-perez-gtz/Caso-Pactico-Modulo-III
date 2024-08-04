--b) Explorar la tabla “menu_items” para conocer los productos del menú.
SELECT * FROM menu_items

--1.- Realizar consultas para contestar las siguientes preguntas:
--● Encontrar el número de artículos en el menú.
SELECT count (item_name)
FROM menu_items
	
--● ¿Cuál es el artículo menos caro y el más caro en el menú?
Select price
from menu_items
order by price asc
limit 1

Select price
from menu_items
order by price desc
limit 1
--● ¿Cuántos platos americanos hay en el menú?
Select * from menu_items
Where category='American'
	
--● ¿Cuál es el precio promedio de los platos?
Select AVG (price)
from menu_items
	
--c) Explorar la tabla “order_details” para conocer los datos que han sido recolectados.
SELECT * FROM order_details
	
--1.- Realizar consultas para contestar las siguientes preguntas:
--● ¿Cuántos pedidos únicos se realizaron en total?
Select count(order_id)
FROM order_details
	
--● ¿Cuáles son los 5 pedidos que tuvieron el mayor número de artículos?

Select * from order_details

SELECT order_id, count(item_id)
FROM order_details
GROUP BY order_id
ORDER BY COUNT (item_id) DESC
LIMIT 5

--● ¿Cuándo se realizó el primer pedido y el último pedido?
Select order_time
from order_details
order by order_time asc
limit 1

Select order_time
from order_details
order by order_time desc
limit 1

--● ¿Cuántos pedidos se hicieron entre el '2023-01-01' y el '2023-01-05'?
SELECT orde_date BETWEEN '2023-01-01' AND '2023-01-05')
FROM order_datails


--1.- Realizar un left join entre entre order_details y menu_items con el identificador 
--item_id(tabla order_details) y menu_item_id(tabla menu_items).
SELECT *
FROM order_details AS o
LEFT JOIN menu_items AS m
ON o.item_id=m.menu_item_id

--Cuá es el top 10 de los platillos más pedidos en el menú.
	
SELECT count(o.order_id), m.item_name
FROM order_details AS o
LEFT JOIN menu_items AS m
ON o.item_id=m.menu_item_id
GROUP BY m.item_name
order by count(o.order_id) desc
Limit 10



