SELECT concat('Project ', id) as NAME, DATEDIFF(MONTH, START_DATE, FINISH_DATE) as MONTH_COUNT
FROM project
GROUP BY id
HAVING month_count = (
  SELECT MAX(DATEDIFF(MONTH, START_DATE, FINISH_DATE))
  FROM project);