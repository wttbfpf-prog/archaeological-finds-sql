-- Δημιουργία στήλης με τις περιφέρειες
ALTER TABLE umme_sites_messenia
ADD Region TEXT NULL;

UPDATE umme_sites_messenia
SET region = case
WHEN site_no BETWEEN 1 AND 167 THEN 'Messenia'
WHEN  site_no BETWEEN 168 AND 202 THEN 'Elis'
END
WHERE site_no BETWEEN 1 AND 202;

-- Δημιουργία λειτουργικής στήλης κατηριοποίησης για τη γεωμορφολογία των θέσεων
ALTER TABLE umme_sites_messenia
ADD COLUMN relief_level TEXT NULL;

UPDATE umme_sites_messenia
SET relief_level = CASE
    WHEN LOWER(physical_desc) REGEXP 'very high' THEN 'very high'
    WHEN LOWER(physical_desc) REGEXP 'high ' THEN 'high'
    WHEN LOWER(physical_desc) REGEXP 'large' THEN 'large'
    WHEN LOWER(physical_desc) REGEXP 'medium' THEN 'medium'
    WHEN LOWER(physical_desc) REGEXP 'very low' THEN 'very low'
    WHEN LOWER(physical_desc) REGEXP 'small|low' THEN 'low'
    WHEN LOWER(physical_desc) REGEXP '^flat|flat area|flat ground|level plateau|relatively flat' THEN 'flat'
    ELSE 'unknown'
END;


ALTER TABLE umme_sites_messenia
ADD COLUMN landform_type TEXT NULL;

UPDATE umme_sites_messenia
SET landform_type = CASE
	WHEN LOWER(physical_desc) REGEXP 'rise' THEN 'rise'
    WHEN LOWER(physical_desc) REGEXP 'cave' THEN 'cave'
    WHEN LOWER(physical_desc) REGEXP 'acropolis' THEN 'acropolis'
    WHEN LOWER(physical_desc) REGEXP 'ridge' THEN 'ridge'
    WHEN LOWER(physical_desc) REGEXP 'spur' THEN 'spur'
    WHEN LOWER(physical_desc) REGEXP 'mound' THEN 'mound'
    WHEN LOWER(physical_desc) REGEXP 'knoll' THEN 'knoll'
    WHEN LOWER(physical_desc) REGEXP 'river' THEN 'river bank'
    WHEN LOWER(physical_desc) REGEXP 'plateau' THEN 'plateau'
    WHEN LOWER(physical_desc) REGEXP 'promontory' THEN 'promontory'
    WHEN LOWER(physical_desc) REGEXP 'headland' THEN 'headland'
    WHEN LOWER(physical_desc) REGEXP 'terrace|terraces' THEN 'terrace'
    WHEN LOWER(physical_desc) REGEXP 'scarp|scarped' THEN 'scarp'
    WHEN LOWER(physical_desc) REGEXP 'slope|sloping ground|rolling country|rolling ground' THEN 'slope'
    WHEN LOWER(physical_desc) REGEXP 'delta' THEN 'delta'
    WHEN LOWER(physical_desc) REGEXP 'plain|coastal plain' THEN 'plain'
    WHEN LOWER(physical_desc) REGEXP 'islet' THEN 'islet'
    WHEN LOWER(physical_desc) REGEXP 'hill' THEN 'hill'
    WHEN LOWER(physical_desc) REGEXP '^flat|flat area|flat ground|level plateau|relatively flat|plain' THEN 'plain'
    ELSE 'unknown'
END;


ALTER TABLE umme_sites_messenia
ADD COLUMN topo_position TEXT NULL;


UPDATE umme_sites_messenia
SET topo_position = CASE
    WHEN landform_type = 'ridge' THEN 'ridge'
    WHEN landform_type = 'spur' THEN 'ridge'
    WHEN landform_type = 'hill' THEN 'summit'
    WHEN landform_type = 'knoll' THEN 'summit'
    WHEN landform_type = 'mound' THEN 'mound'
    WHEN landform_type = 'plateau' THEN 'plateau_surface'
    WHEN landform_type = 'terrace' THEN 'terrace'
    WHEN landform_type = 'plain' THEN 'plain'
    WHEN landform_type = 'river bank' THEN 'floodplain'
    WHEN landform_type = 'delta' THEN 'floodplain'
    WHEN landform_type = 'promontory' THEN 'coastal_projection'
    WHEN landform_type = 'headland' THEN 'coastal_projection'
    WHEN landform_type = 'cave' THEN 'cliff_face'
    WHEN landform_type = 'acropolis' THEN 'summit'
    WHEN landform_type = 'scarp' THEN 'slope'
    WHEN landform_type = 'slope' THEN 'slope'
    WHEN landform_type = 'islet' THEN 'islet'
    WHEN landform_type = 'rise' THEN 'slight_elevation'
    ELSE 'unknown'
END;


ALTER TABLE umme_sites_messenia
ADD COLUMN Artificial TEXT NULL;

UPDATE umme_sites_messenia
SET artificial = CASE
    WHEN LOWER(physical_desc) REGEXP 'artificial' THEN 'Yes'
    WHEN landform_type REGEXP 'unknown' THEN 'unknown'
	ELSE 'no'
    END;



