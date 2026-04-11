-- Δημιουργία πίνακα για την καταγραφή των μη αυτοματοποιημένων αλλαγών και με το τεμκημρίωση του λόγου μη αυτοματοποίησης τους.
-- Δημιουργία προβολής για των τριών κύριων πινάκων μαζί με της μη αυτοματοποιημένες αλλαγές. 


DROP TABLE IF EXISTS umme_sites_messenia_NON_AUTOMATED_CHANGES;
CREATE TABLE  umme_sites_messenia_NON_AUTOMATED_CHANGES
(site_no INT NOT NULL,
location_desc TEXT NULL,
Region TEXT NULL,
relief_leveL TEXT NULL,
landform_type TEXT NULL,
topo_position TEXT NULL,
Artificial TEXT NULL,
Reason TEXT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (site_no));


DROP VIEW IF EXISTS curated_sites;
CREATE VIEW curated_sites AS
SELECT s.site_no,
  COALESCE(d.location_desc, s.location_desc) AS location_desc,
  COALESCE(d.Region, s.Region) AS Region,
  COALESCE(d.relief_leveL, s.relief_leveL) AS relief_leveL ,
  COALESCE(d.landform_type, s.landform_type) AS landform_type,
  COALESCE(d.topo_position, s.topo_position) AS topo_position,
  COALESCE(d.Artificial, s.Artificial) AS Artificial
FROM umme_sites_messenia as s
LEFT JOIN umme_sites_messenia_NON_AUTOMATED_CHANGES as d
ON s.site_no = d.site_no;



DROP VIEW IF EXISTS umme_archaeological_data_NON_AUTOMATED_CHANGES;
CREATE TABLE  umme_archaeological_data_NON_AUTOMATED_CHANGES
(site_no INT NOT NULL,
site TEXT NULL,
settlement TEXT NULL,
cemetery TEXT NULL,
Early_Helladic TEXT NULL,
Middle_Helladic TEXT NULL,
Late_Helladic TEXT NULL,
area_ha DECIMAL(10,2) NULL,
reason TEXT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (site_no));

DROP VIEW IF EXISTS curated_arch_data;
CREATE VIEW curated_arch_data AS
SELECT s.site_no,
  COALESCE(d.site, s.site) AS site,
  COALESCE(d.settlement, s.settlement) AS settlement,
  COALESCE(d.cemetery, s.cemetery) AS cemetery,
  COALESCE(d.Early_Helladic, s.Early_Helladic) AS Early_Helladic,
  COALESCE(d.Middle_Helladic, s.Middle_Helladic) AS Middle_Helladic,
  COALESCE(d.Late_Helladic , s.Late_Helladic)  AS Late_Helladic,
  COALESCE(d.area_ha, s.area_ha) AS area_ha
FROM umme_archaeological_data as s
LEFT JOIN umme_archaeological_data_NON_AUTOMATED_CHANGES as d
ON s.site_no = d.site_no;



DROP VIEW IF EXISTS Register_NON_AUTOMATED_CHANGES;
CREATE TABLE  Register_NON_AUTOMATED_CHANGES
(site_no INT NOT NULL,
comm_uncertainty TEXT NULL,
comm_class TEXT NULL,
sea_reach TEXT NULL,
strategic_primary_class TEXT NULL,
water_access_class TEXT NULL,
radius_km DECIMAL(10,2) NULL,
hectares DECIMAL(10,2) NULL,
population_data INT NULL, 
population_cat  TEXT NULL,
land_pct_cultivated INT NULL,
land_irrigated_ha INT NULL,
special_features TEXT,
reason TEXT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (site_no));

DROP VIEW IF EXISTS Register_data;
CREATE VIEW Register_data AS
SELECT s.site_no,
  COALESCE(d.comm_uncertainty, s.comm_uncertainty) AS comm_uncertainty,
  COALESCE(d.comm_class, s.comm_class) AS comm_class,
  COALESCE(d.sea_reach, s.sea_reach) AS sea_reach,
  COALESCE(d.strategic_primary_class, s.strategic_primary_class) AS strategic_primary_class,
  COALESCE(d.water_access_class, s.water_access_class) AS water_access_class,
  COALESCE(d.radius_km, s.radius_km) AS radius_km,
  COALESCE(d.hectares, s.hectares)  AS hectares,
  COALESCE(d.population_data, s.population_data) AS population_data,
  COALESCE(d.population_cat, s.population_cat) AS population_cat,
  COALESCE(d.land_pct_cultivated, s.land_pct_cultivated) AS land_pct_cultivated,
  COALESCE(d.land_irrigated_ha , s.land_irrigated_ha) AS land_irrigated_ha,
  COALESCE(d.special_features, s.special_features) AS special_features
FROM umme_registerA_even as s
LEFT JOIN Register_NON_AUTOMATED_CHANGES as d
ON s.site_no = d.site_no;

