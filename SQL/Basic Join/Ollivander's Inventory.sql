SELECT W.ID, WP.AGE , W.COINS_NEEDED, W.POWER
FROM WANDS W
INNER JOIN WANDS_PROPERTY WP ON W.CODE = WP.CODE
JOIN (SELECT MIN(WANDS.COINS_NEEDED) AS COST, WANDS.POWER, WANDS_PROPERTY.AGE FROM WANDS JOIN WANDS_PROPERTY ON WANDS.CODE = WANDS_PROPERTY.CODE GROUP BY WANDS_PROPERTY.AGE, WANDS.POWER) AS CHEAP_WANDS ON CHEAP_WANDS.COST = W.COINS_NEEDED AND CHEAP_WANDS.POWER = W.POWER AND CHEAP_WANDS.AGE = WP.AGE
WHERE WP.IS_EVIL = 0
ORDER BY W.POWER DESC, WP.AGE DESC;