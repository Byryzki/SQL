--Datadb100 Tentti 10.5
--Laine Pyry 50282836


SELECT potato_name
FROM ((potato INNER JOIN is_suitable_for ON potato.potato_id = is_suitable_for.potato_id)
	is_suitable_for INNER JOIN dish_type ON is_suitable_for.dish_type_id = dish_type.dish_type_id)
WHERE dish_type_name = 'boiling'

INTERSECT

SELECT potato_name
FROM ((potato INNER JOIN is_suitable_for ON potato.potato_id = is_suitable_for.potato_id)
	is_suitable_for INNER JOIN dish_type ON is_suitable_for.dish_type_id = dish_type.dish_type_id)
WHERE dish_type_name = 'salad'

ORDER BY 1;