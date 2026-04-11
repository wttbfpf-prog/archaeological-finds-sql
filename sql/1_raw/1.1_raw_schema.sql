DROP TABLE IF EXISTS umme_sites_messenia;
CREATE TABLE umme_sites_messenia 
(site_no INTEGER NOT NULL, 
site VARCHAR(255)  NULL, 
location_desc TEXT  NULL, 
physical_desc TEXT NULL, 
PRIMARY KEY (site_no));    

DROP TABLE IF EXISTS umme_archaeological_data;
  CREATE TABLE umme_archaeological_data(site_no INTEGER NOT NULL, 
  site VARCHAR(255) NULL, 
  bibliography TEXT  NULL, 
  archaeological_desc TEXT  NULL, 
  pottery_analysis TEXT  NULL,
  extent_desc TEXT  NULL,
  PRIMARY KEY (site_no),
    CONSTRAINT fk_even_to_sites
    FOREIGN KEY (site_no) REFERENCES umme_sites_messenia(site_no)
    ON UPDATE CASCADE ON DELETE CASCADE);
    
    
DROP TABLE IF EXISTS umme_registerA_even;
CREATE TABLE umme_registerA_even (
    site_no INT NOT NULL,
    communications TEXT NULL,
    strategic_features TEXT NULL,
    water_supply TEXT NULL,
    land_total TEXT NULL,
    land_pct_cultivated DECIMAL(5,2) NULL,
    land_irrigated_ha DECIMAL(10,2) NULL,
    population TEXT NULL,
    special_features TEXT NULL,
    PRIMARY KEY (site_no),
	CONSTRAINT sites
    FOREIGN KEY (site_no) REFERENCES umme_sites_messenia(site_no)
    ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT arch_data
    FOREIGN KEY (site_no) REFERENCES umme_archaeological_data(site_no)
    ON UPDATE CASCADE ON DELETE CASCADE);


