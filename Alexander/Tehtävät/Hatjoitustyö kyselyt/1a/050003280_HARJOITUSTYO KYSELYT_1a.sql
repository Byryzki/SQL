-- Tietokantojen perusteet 2020
-- KYSELYT 1A
-- Alexandre.Lotta@tuni.fi (tuni-osoite)

SELECT tuotemerkki.tmnimi, tuote.tnimi, arviointi.paivamaara, arviointi.arvosana
 FROM  ((tuote INNER JOIN  tuotemerkki
         ON tuotemerkki.tmtunnus = tuote.tmtunnus)
         INNER JOIN arviointi ON arviointi.ttunnus = tuote.ttunnus)

 ORDER BY tuotemerkki.tmnimi, tuote.tnimi, arviointi.paivamaara DESC;