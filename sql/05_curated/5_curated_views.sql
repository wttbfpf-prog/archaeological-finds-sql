-- Δημιουργία πίνακα για την καταγραφή των μη αυτοματοποιημένων αλλαγών και με το τεμκημρίωση του λόγου μη αυτοματοποίησης τους.
-- Δημιουργία προβολής για των τριών κύριων πινάκων μαζί με της μη αυτοματοποιημένες αλλαγές. 


DROP table if exists umme_sites_messenia_NON_AUTOMATED_CHANGES;
CREATE TABLE  umme_sites_messenia_NON_AUTOMATED_CHANGES
(site_no INT NOT NULL,
location_desc TEXT NULL,
Region TEXT NULL,
geomorphology_class TEXT NULL,
topographic_zone TEXT NULL,
reason TEXT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (site_no));


DROP VIEW IF EXISTS curated_sites;
CREATE VIEW curated_sites AS
SELECT s.site_no,
  COALESCE(d.location_desc, s.location_desc) AS location_desc,
  COALESCE(d.Region, s.Region) AS Region,
  COALESCE(d.geomorphology_class, s.geomorphology_class) AS geomorphology_class,
  COALESCE(d.topographic_zone, s.topographic_zone) AS topographic_zone
FROM umme_sites_messenia as s
LEFT JOIN umme_sites_messenia_NON_AUTOMATED_CHANGES as d
ON s.site_no = d.site_no;


DROP table if exists umme_archaeological_data_NON_AUTOMATED_CHANGES;
CREATE TABLE  umme_archaeological_data_NON_AUTOMATED_CHANGES
(site_no INT NOT NULL,
site TEXT NULL,
pottery_analysis TEXT NULL,
area_ha DECIMAL(10,2) NULL,
settlement_or_cemetery TEXT NULL,
reason TEXT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (site_no));

DROP VIEW IF EXISTS curated_arch_data;
CREATE VIEW curated_arch_data AS
SELECT s.site_no,
  COALESCE(d.site, s.site) AS site,
  COALESCE(d.pottery_analysis, s.pottery_analysis) AS pottery_analysis,
  COALESCE(d.area_ha, s.area_ha) AS area_ha,
  COALESCE(d.settlement_or_cemetery, s.settlement_or_cemetery) AS settlement_or_cemetery
FROM umme_archaeological_data as s
LEFT JOIN umme_archaeological_data_NON_AUTOMATED_CHANGES as d
ON s.site_no = d.site_no;



