

-- Συνέχιση κατοίκησης από την Πρωτοελλαδική στη Μεσοελλαδική περίοδο.
SELECT ROW_NUMBER() OVER(ORDER BY site) AS n, s.site 
FROM curated_arch_data AS s
JOIN curated_sites AS m
ON s.site_no = m.site_no
WHERE m.Region = 'Messenia' AND
s.Early_Helladic IN ('Yes', 'possible')
AND
s.Middle_Helladic IN ('Yes', 'possible');


-- Διαφορα αριθμού οικισμών από την Πρωτοελλαδική στην Μεσοελλαδική
SELECT(SELECT COUNT(*) AS Middle_Helladic FROM curated_arch_data AS s
JOIN  curated_sites  AS m
ON s.site_no = m.site_no
WHERE m.Region = 'Messenia' AND s.Middle_Helladic IN ('Yes', 'possible')) - (SELECT COUNT(*) AS Early_Helladic FROM curated_arch_data AS s
JOIN curated_sites AS m
ON s.site_no = m.site_no
WHERE m.Region = 'Messenia' AND s.Early_Helladic IN ('Yes', 'possible'))  AS Sites_difference_by_Period;


-- Ποσοστό αύξησης μεταξύ των περιόδων
SELECT ROUND(100 * (MH - EH) / NULLIF(EH,0)) AS percent_increase
FROM (SELECT SUM(s.Middle_Helladic IN ('Yes', 'possible')) AS MH,
SUM( s.Early_Helladic IN ('Yes', 'possible')) AS EH
FROM curated_arch_data AS s
JOIN curated_sites AS m
ON s.site_no = m.site_no
WHERE m.Region = 'Messenia') x;

