-- Η μεγαλύτερη  αρχαιολογική θέση
SELECT site, area_ha 
FROM curated_arch_data
ORDER BY area_ha DESC limit 1;
-- Οι τρεις μεγαλύτερες αρχαιολογικές θέσεις
SELECT site, area_ha 
FROM curated_arch_data
ORDER BY area_ha DESC limit 3;



-- o Μέσος όρος του μεγέθους των θέσεων στην Μεσσηνία κατά την Πρωτοελλαδική περίοδο
SELECT ROUND(AVG(d.area_ha), 2) AS average_area 
FROM curated_arch_data AS d
JOIN curated_sites AS s
  ON d.site_no = s.site_no
WHERE s.Region = 'Messenia'
AND d.area_ha IS NOT NULL
AND d.Early_Helladic IN( 'Yes', 'possible') ;


-- o Μέσος όρος του μεγέθους των θέσεων στην Μεσσηνία κατά την Μεσοελλαδική περίοδο
SELECT ROUND(AVG(d.area_ha), 2) AS average_area
FROM curated_arch_data AS d
JOIN curated_sites AS s
  ON d.site_no = s.site_no
WHERE s.Region = 'Messenia'
AND d.area_ha IS NOT NULL
AND d.Middle_Helladic IN( 'Yes', 'possible');

-- Ο αριθμός των οικισμών στην Πρωτοελλαδική περίοδο
SELECT COUNT(*) AS Settlements 
FROM curated_arch_data AS d
JOIN curated_sites AS s
ON s.site_no = d.site_no
WHERE s.Region = 'Messenia' AND 
d.settlement IN ('Yes','Maybe') AND
d.Early_Helladic IN ('Yes','possible');

-- Ο αριθμός των οικισμών στην Μεσοελλαδική περίοδο
SELECT COUNT(*) AS Settlements 
FROM umme_archaeological_data AS s
JOIN umme_sites_messenia AS m
ON s.site_no = m.site_no
WHERE m.Region = 'Messenia' AND 
s.settlement IN ('Yes','Maybe') AND
s.Middle_Helladic IN ('Yes','possible');



