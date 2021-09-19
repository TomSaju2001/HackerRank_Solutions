SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^a|^e|^i|^o|^u';

-- or WHERE CITY REGEXP '^[aeiou]'

--  Pattern   | What the pattern matches
---------------------------------------
--    ^       |  Beginning of string
--  [...]     |  Any character listed between the square brackets

-- Useful Reference: https://www.tutorialspoint.com/mysql/mysql-regexps.htm
