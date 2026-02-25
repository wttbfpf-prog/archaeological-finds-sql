-- Η μεγαλύτερη θέση
SELECT site, area_ha 
FROM archaeological_finds.umme_archaelogical_data
ORDER BY area_ha DESC limit 1;
-- Οι τρεις μεγαλύτερες θέσεις
SELECT site, area_ha 
FROM archaeological_finds.umme_archaelogical_data
ORDER BY area_ha DESC limit 3;


-- Πολυ μικρές θέσεις
select site, area_ha from archaeological_finds.umme_archaelogical_data
where area_ha > 0.1 and area_ha < 0.25
order by area_ha desc;

-- Μικρές θέσεις
select site, area_ha from archaeological_finds.umme_archaelogical_data
where area_ha > 0.25 and area_ha < 0.50
order by area_ha desc;

-- Μεσαιες θέσεις
select site, area_ha from archaeological_finds.umme_archaelogical_data
where area_ha > 0.5 and area_ha < 1
order by area_ha desc;

-- Μεγάλες θέσεις
select site, area_ha from archaeological_finds.umme_archaelogical_data
where area_ha > 1 and area_ha < 2.5
order by area_ha desc;

-- Πολύ μεγάλες θέσεις
select site, area_ha from archaeological_finds.umme_archaelogical_data
where area_ha > 2.5
order by area_ha desc;


-- o Μέσος όρος του μεγέθους των θέσεων στην Μεσσηνία 
SELECT ROUND(AVG(d.area_ha), 2) AS average_area
FROM archaeological_finds.umme_archaelogical_data d
JOIN archaeological_finds.umme_sites_messenia s
  ON d.site_no = s.site_no
WHERE Trim(s.region) like '%Messenia%'
and d.area_ha is not null;


-- o Μέσος όρος του μεγέθους των θέσεων στην Ηλεία
SELECT ROUND(AVG(d.area_ha), 2) AS average_area
FROM archaeological_finds.umme_archaelogical_data d
JOIN archaeological_finds.umme_sites_messenia s
  ON d.site_no = s.site_no
WHERE Trim(s.region) like '%Elis%'
and d.area_ha is not null;