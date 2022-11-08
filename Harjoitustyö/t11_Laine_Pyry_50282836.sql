--Datadb100 Tentti 10.5
--Laine Pyry 50282836


SELECT potato_name, potato_type, breeder.breeder_id, tonnes_per_year
FROM ((potato INNER JOIN breeds ON potato.potato_id = breeds.potato_id)
	breeds INNER JOIN breeder ON breeds.breeder_id = breeder.breeder_id)
WHERE (potato_type = 'smooth' OR potato_type = 'floury') AND introduction_year <= 1950
ORDER BY potato_name, breeder.breeder_id;