-- Δημιουργία στήλης με τις περιφέρειες
Alter table umme_sites_messenia
Add Region TEXT NULL;

update umme_sites_messenia
set region = case
when site_no between 1 and 167 then 'Messenia'
when site_no between 168 and 203 then 'Elis'
end
where site_no between 1 and 203;


-- Δημιουργία λειτουργικής στήλης κατηριοποίησης για τη γεωμορφολογία των θέσεων
ALTER TABLE umme_sites_messenia
ADD COLUMN geomorphology_class text null;

UPDATE umme_sites_messenia
SET geomorphology_class = CASE
WHEN physical_desc  REGEXP 'High ridge|Low ridge'
THEN 'Ridge'
WHEN physical_desc  REGEXP 'Medium hill|Low hill'
THEN 'Hill'
WHEN physical_desc  REGEXP 'Low mound'
THEN 'Mound'
WHEN physical_desc REGEXP 'Flat area'
THEN 'Flat plain'
WHEN physical_desc  REGEXP 'Flat marshy delta'
THEN 'Deltaic / coastal lowland'
WHEN physical_desc REGEXP 'rocky headland'
THEN 'Rocky headland'
WHEN physical_desc  REGEXP 'Large cave'
THEN 'Cave / rock shelter'
ELSE 'Unclassified'
END;

-- Δημιουργία λειτουργικής στήλης κατηριοποίησης σε τοπογραφικές ζώνες
ALTER TABLE umme_sites_messenia
ADD COLUMN topographic_zone text null;

UPDATE umme_sites_messenia
SET topographic_zone = CASE
WHEN geomorphology_class IN ('Ridge')
THEN 'Mountainous / upland'
WHEN geomorphology_class IN ('Hill', 'Mound')
THEN 'Hilly'
WHEN geomorphology_class IN ('Flat plain')
THEN 'Lowland / plain'
WHEN geomorphology_class IN ('Deltaic / coastal lowland')
THEN 'Deltaic / wetland'
WHEN geomorphology_class IN ('Rocky headland')
THEN 'Coastal'
WHEN geomorphology_class IN ('Cave / rock shelter')
THEN 'Rocky / karstic'
ELSE 'Unclassified'
END;
