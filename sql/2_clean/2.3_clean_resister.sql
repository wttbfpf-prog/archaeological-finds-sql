-- Δημιουργία προδωρινού πίνακα για τον έλεγχο των αποτελεσμάτων και διαμόρφωση της τελικής στήλης για την απόσταση από την θάλασσα και την επικοινωνία στο εσωτερικό της Μεσσηνίας.
CREATE TEMPORARY TABLE SEA AS
WITH CTE AS (
SELECT site_no, 
communications, 
TRIM(SUBSTRING_INDEX(communications, ';', 1)) as communication,
TRIM(SUBSTRING_INDEX(communications, ';', -1)) as sea_reach
FROM umme_registerA_even_raw_data)

SELECT site_no, 
CASE
WHEN communication REGEXP'[0-9]' THEN NULL
ELSE communication
END AS regional_communications_network, 
sea_reach
FROM CTE;


CREATE TEMPORARY TABLE sea_reach AS
WITH CTE_1 AS (
SELECT site_no, sea_reach, 
CAST(REGEXP_SUBSTR(sea_reach, '[0-9]+(\\.[0-9]+)?') AS DECIMAL(10,2)) as km,
CASE 
WHEN sea_reach REGEXP '½' THEN 0.50
ELSE 0
END AS decim
FROM SEA)

SELECT site_no, sea_reach, km + decim as sea_reach_1 FROM CTE_1;

ALTER TABLE sea_reach
ADD COLUMN sea_distance TEXT NULL;r
UPDATE sea_reach
SET sea_distance =
CASE
WHEN sea_reach_1 = 0 THEN 'coastal'
WHEN sea_reach_1 <= 3 THEN 'coastal'
WHEN  sea_reach_1 <= 6 THEN 'near_sea'
WHEN  sea_reach_1 <= 9 THEN 'moderate_distance'
WHEN  sea_reach_1 >= 50 THEN NULL
WHEN  sea_reach_1 IS NULL THEN NULL
ELSE 'inland'
END;

-- Προσθήκη της τελικής στήλης για την απόσταση από την θάλασσα στον κεντρικό πίνακα.

ALTER TABLE umme_registerA_even
ADD COLUMN sea_reach TEXT NULL;

UPDATE umme_registerA_even as n
JOIN sea_reach as s on n.site_no = s.site_no
SET n.sea_reach = s.sea_distance;

ALTER TABLE sea
ADD COLUMN comm_class VARCHAR(30),
ADD COLUMN comm_uncertainty VARCHAR(20);


UPDATE sea
SET comm_class = CASE
    WHEN regional_communications_network IS NULL THEN 'unknown'
    WHEN LOWER(regional_communications_network) REGEXP 'very isolated' THEN 'very_isolated'
    WHEN LOWER(regional_communications_network) REGEXP 'near mainline|close to mainline' THEN 'near_mainline'
    WHEN LOWER(regional_communications_network) REGEXP 'crossroads' THEN 'crossroads'
    WHEN LOWER(regional_communications_network) REGEXP 'mainline' THEN 'mainline'
    WHEN LOWER(regional_communications_network) REGEXP 'secondary' THEN 'secondary'
    WHEN LOWER(regional_communications_network) REGEXP 'isolated' THEN 'isolated'
    ELSE 'unknown'
END;


UPDATE sea
SET comm_uncertainty = CASE
    WHEN regional_communications_network IS NULL THEN 'uncertain'
    WHEN regional_communications_network LIKE '%?%' THEN 'uncertain'
    WHEN LOWER(regional_communications_network) REGEXP 'probable' THEN 'uncertain'
    WHEN LOWER(regional_communications_network) REGEXP 'if present' THEN 'uncertain'
    ELSE 'certain'
END;


ALTER TABLE umme_registerA_even
ADD COLUMN  comm_class TEXT NULL;

UPDATE umme_registerA_even as n
JOIN sea as s on n.site_no = s.site_no
SET n.comm_class = s.comm_class;

ALTER TABLE umme_registerA_even
ADD COLUMN comm_uncertainty TEXT NULL;
UPDATE umme_registerA_even as n
JOIN sea as s on n.site_no = s.site_no
SET n.comm_uncertainty = s.comm_uncertainty;

ALTER TABLE umme_registerA_even
ADD COLUMN  strategic_primary_class TEXT NULL;
UPDATE umme_registerA_even
SET strategic_primary_class = 
CASE WHEN strategic_features IS NULL THEN 'none'
WHEN LOWER(strategic_features) REGEXP 'defensive|defensible|fortress|protected' THEN 'defensive'
WHEN LOWER(strategic_features) REGEXP 'lookout|view|overlooks|commanding view|excellent view|superb view|magnificent view|spectacular view|dominating'
THEN 'lookout'
WHEN LOWER(strategic_features) REGEXP 'route|pass|highway|road|traffic|crossing|ford|bridge|confluence|access|communications'
THEN 'route_control'
WHEN LOWER(strategic_features) REGEXP 'water source|spring|aqueduct|harbor|bay|beach|sheltered|fertile|productive countryside|river mouth'
THEN 'resource_access'
ELSE 'none'
END;



ALTER TABLE umme_registerA_even
ADD COLUMN water_access_class VARCHAR(20);

UPDATE umme_registerA_even
SET water_access_class = CASE
WHEN water_supply IS NULL
     OR TRIM(water_supply) = ''
     OR UPPER(TRIM(water_supply)) = 'NULL'
THEN 'unknown'
WHEN LOWER(water_supply) REGEXP 'perennial river|river|spring-fed river'
THEN 'river_access'
WHEN LOWER(water_supply) REGEXP 'copious|very copious|tremendous'
THEN 'abundant_water'
WHEN LOWER(water_supply) REGEXP 'good spring|fair spring'
THEN 'moderate_water'
WHEN LOWER(water_supply) REGEXP 'small spring|poor spring|well|wells|poorly watered'
THEN 'limited_water'
ELSE 'unknown'
END;

UPDATE umme_registerA_even
SET land_total = REPLACE(land_total,',','');


ALTER TABLE umme_registerA_even
ADD COLUMN radius_km DECIMAL(10,2) NULL,
ADD COLUMN hectares INT NULL;

UPDATE umme_registerA_even
SET radius_km = CAST(REGEXP_SUBSTR(land_total, '[0-9]+(\\.[0-9]+)?(?=\\s*km)') AS DECIMAL(10,2))
WHERE land_total IS NOT NULL;
UPDATE umme_registerA_even
SET hectares = CAST(REGEXP_SUBSTR(land_total, '[0-9]+(\\.[0-9]+)?(?=\\s*ha)') AS DECIMAL(10,0))
WHERE land_total IS NOT NULL;
ALTER TABLE umme_registerA_even
ADD COLUMN population_data INT NULL,
ADD COLUMN population_cat TEXT NULL;
UPDATE umme_registerA_even
SET population_data =CASE
 WHEN LOWER(population) REGEXP 'half dozen families' THEN 24
 WHEN LOWER(population)  NOT REGEXP '[0-9]' THEN 'NULL'
 ELSE REGEXP_SUBSTR(population, '[0-9]+(\\.[0-9]+)?')
 END;

UPDATE umme_registerA_even
SET population_cat =  CASE
 WHEN population_data >= 1 AND population_data  <= 100 THEN 'very_small_site'
 WHEN population_data >= 101 AND population_data  <= 200 THEN 'small'
 WHEN population_data>= 201 AND population_data  <= 300 THEN 'medium'
 WHEN population_data >= 301 AND population_data <= 500 THEN 'large'
 WHEN population_data >= 501 THEN 'very large'
 ELSE population_data
 END;


ALTER TABLE umme_registerA_even
ADD CONSTRAINT chk_sea_reach
CHECK (sea_reach IN ('coastal','near_sea','moderate_distance','inland') OR sea_reach IS NULL);

ALTER TABLE umme_registerA_even
ADD CONSTRAINT chk_comm_class
CHECK (comm_class IN ('mainline','secondary','isolated','near_mainline','crossroads','very_isolated','unknown'));



SELECT * FROM register;