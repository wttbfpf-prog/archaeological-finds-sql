
CREATE TABLE UMME_sites_messenia 
(site_no INTEGER NOT NULL, 
site VARCHAR(255)  NULL, 
location_desc TEXT  NULL, 
physical_desc TEXT NULL, 
PRIMARY KEY (site_no));    

  CREATE TABLE UMME_archaeological_data(site_no INTEGER NOT NULL, 
  site VARCHAR(255) NULL, 
  bibliography TEXT  NULL, 
  archaeological_desc TEXT  NULL, 
  pottery_analysis TEXT  NULL,
  extent_desc TEXT  NULL,
  PRIMARY KEY (site_no));


