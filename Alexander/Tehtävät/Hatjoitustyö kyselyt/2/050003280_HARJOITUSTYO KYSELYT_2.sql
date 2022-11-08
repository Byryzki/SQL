-- Tietokantojen perusteet 2020
-- KYSELYT 2
-- Alexandre.Lotta@tuni.fi (tuni-osoite)

 SELECT kayttaja.sukupuoli, kayttaja.syntymavuosi, kayttaja.kanimi
 FROM  ((arviointi INNER JOIN  tuote
         ON tuote.ttunnus = arviointi.ttunnus)
         INNER JOIN kayttaja ON kayttaja.katunnus = arviointi.katunnus)
  WHERE tuote.tnimi = 'Trimmeri TRCee' OR tuote.tnimi = 'Trimmerisiima Cee' OR tuote.tnimi = 'Moottorisaha MSCee RR'

  INTERSECT

  SELECT kayttaja.sukupuoli, kayttaja.syntymavuosi, kayttaja.kanimi

 FROM  ((arviointi INNER JOIN  tuote
         ON tuote.ttunnus = arviointi.ttunnus)
         INNER JOIN kayttaja ON kayttaja.katunnus = arviointi.katunnus)
  WHERE tuote.tnimi = 'Trimmerisiima Y' OR tuote.tnimi = 'Lapio L'

 ORDER BY kayttaja.sukupuoli, kayttaja.syntymavuosi, kayttaja.kanimi;