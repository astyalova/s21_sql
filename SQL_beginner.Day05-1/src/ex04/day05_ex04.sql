CREATE UNIQUE INDEX idx_menu_unique ON menu(pizza_name, pizzeria_id);
SET enable_seqscan TO OFF; --отключение последовательного сканирования
EXPLAIN ANALYZE
SELECT pizzeria_id, pizza_name
FROM menu
WHERE pizza_name = 'cheese pizza' AND pizzeria_id = 1;
