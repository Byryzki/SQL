--T1.4
--Laine Pyry 50282836

SELECT breeder_name
FROM ((potato INNER JOIN breeds ON potato.potato_id = breeds.potato_id)
	breeds INNER JOIN breeder ON breeds.breeder_id = breeder.breeder_id)
WHERE potato_type = 'floury'
GROUP BY breeds.potato_id

INTERSECT

SELECT breeder_name
FROM ((potato INNER JOIN breeds ON potato.potato_id = breeds.potato_id)
	breeds INNER JOIN breeder ON breeds.breeder_id = breeder.breeder_id)

WHERE potato_type = 'floury'
GROUP BY breeder_name

ORDER BY 1;