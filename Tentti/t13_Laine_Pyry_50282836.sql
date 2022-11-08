--T1.3
--Laine Pyry 50282836

SELECT dish_type_name, dish_type.dish_type_id, 
		COUNT(DISTINCT is_suitable_for.potato_id) AS no_potato_varities,
		COUNT(DISTINCT breeds.breeder_id) AS no_breeders,
		SUM(tonnes_per_year) AS total_tonnes
	
FROM ((((breeder INNER JOIN breeds ON breeder.breeder_id = breeds.breeder_id)
		breeds INNER JOIN potato ON breeds.potato_id = potato.potato_id)
		potato INNER JOIN is_suitable_for ON potato.potato_id = is_suitable_for.potato_id)
		is_suitable_for LEFT OUTER JOIN dish_type ON is_suitable_for.dish_type_id = dish_type.dish_type_id)

GROUP BY dish_type_name
ORDER BY dish_type_name;
