SELECT DISTINCT num AS ConsecutiveNums
FROM Logs as L1
WHERE (SELECT COUNT(*)
       FROM Logs AS L2
       WHERE L2.num = L1.num
         AND L2.id >= L1.id
         AND L2.id <= L1.id + 2
      ) >= 3;
