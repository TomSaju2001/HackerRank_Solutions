SELECT H.HACKER_ID, H.NAME, SUM(S.SCORE)
FROM HACKERS H
INNER JOIN (SELECT HACKER_ID, CHALLENGE_ID, MAX(SCORE) AS SCORE FROM SUBMISSIONS 
            GROUP BY CHALLENGE_ID, HACKER_ID) S ON H.HACKER_ID = S.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
HAVING SUM(S.SCORE) > 0
ORDER BY SUM(S.SCORE) DESC, H.HACKER_ID ASC;