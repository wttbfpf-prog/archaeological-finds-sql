
-- Εμφάνιση των δημιουργημένων πινάκων 
select * from umme_sites_messenia;
select * from umme_archaeological_data;

-- Δημιουργία αντιγράφων για τους πίνακες 
CREATE TABLE raw_arch_data LIKE umme_archaeological_data;
INSERT INTO raw_arch_data SELECT * FROM umme_archaeological_data;

CREATE TABLE raw_sites LIKE umme_sites_messenia;
INSERT INTO raw_sites  SELECT * FROM umme_sites_messenia;


SELECT site,COUNT(*) 
FROM umme_archaeological_data
GROUP BY site
HAVING COUNT(*) > 1;

SELECT site_no,COUNT(*) 
FROM umme_sites_messenia
GROUP BY site_no
HAVING COUNT(*) > 1;

SELECT dat.site_no FROM umme_sites_messenia AS sit
LEFT JOIN umme_archaeological_data AS dat
ON sit.site_no  = dat.site_no
WHERE sit.site_no IS NULL;


SELECT sit.site_no FROM umme_archaeological_data AS dat
LEFT JOIN umme_sites_messenia AS sit
ON dat.site_no = sit.site_no
WHERE dat.site_no IS NULL;

