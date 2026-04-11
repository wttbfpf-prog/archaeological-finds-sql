-- Δημιουργία πίνακα για τις πρωτοελλαδικές θέσεις
CREATE TEMPORARY TABLE temp_table_Early
SELECT dat.site_no, dat.site, sit.region, dat.settlement, dat.cemetery, 
dat.Early_Helladic, dat.area_ha, sit.topo_position, sit.Artificial, sit.landform_type, sit.relief_level		
FROM curated_arch_data AS dat
JOIN curated_site AS sit
ON dat.site_no = sit.site_no
WHERE sit.Region = 'Messenia' AND
dat.Early_Helladic IN( 'Yes', 'possible');


CREATE TEMPORARY TABLE Early_Helladic
SELECT dat.site_no, dat.site, dat.region, dat.settlement, dat.cemetery, dat.Early_Helladic, dat.area_ha, dat.topo_position, dat.Artificial, dat.landform_type, dat.relief_level,
sit.land_pct_cultivated, sit.land_irrigated_ha, sit.sea_reach, sit.comm_class, sit.comm_uncertainty, sit.water_access_class, 
sit.strategic_primary_class, sit.radius_km, sit.hectares, sit.population_data, sit.population_cat			
FROM temp_table_Early AS dat
JOIN Register AS sit
ON dat.site_no = sit.site_no;


-- Σύνολο θέσων με βάση την ποιότητα των δεδομένων
SELECT COUNT(*) AS identified_sites, (SELECT COUNT(*) 
FROM Early_Helladic
WHERE Early_Helladic = 'possible' ) AS undentified_sites FROM Early_Helladic
WHERE Early_Helladic  = 'Yes';


-- Τα ποιοτικά δεδομένα για τους οικισμούς της Πρωτοελλαδικής περιόδου
SELECT ROW_NUMBER() OVER(ORDER BY area_ha DESC) AS n, site, region from Early_Helladic
WHERE Early_Helladic ='Yes' 
AND settlement = 'Yes';

-- Η τοπογραφία των πρωτοελλαδικών θέσεων
SELECT topo_position, count(topo_position) AS Total_number_per_topographic_zone
FROM Early_Helladic
GROUP BY topo_position;

-- Το ποσοστό των λόφων στην Πρωτοελλαδική τοπογραφία
SELECT ROUND( 100 * SUM(topo_position = 'summit') 
/ NULLIF(SUM(topo_position IS NOT NULL), 0), 2) AS percent_hilly
FROM Early_Helladic;

SELECT topo_position, count(topo_position) AS Total_number_per_topographic_zone,
ROUND( 100 * count(*) 
/ (select count(topo_position) as pct_of_classified FROM Early_Helladic WHERE topo_position IS NOT NULL),2) AS percent
FROM Early_Helladic
WHERE topo_position IS NOT NULL
GROUP BY  topo_position
ORDER BY Total_number_per_topographic_zone DESC;


-- Δημιουργία πίνακα για τις θέσεις της Μεσοελλαδικής περιόδου
CREATE TEMPORARY TABLE temp_table_Middle
SELECT dat.site_no, dat.site, sit.region, dat.settlement, dat.cemetery, 
dat.Middle_Helladic, dat.area_ha, sit.topo_position, sit.Artificial, sit.landform_type, sit.relief_leveL		
FROM curated_arch_data AS dat
JOIN curated_sites AS sit
ON dat.site_no = sit.site_no
WHERE sit.Region = 'Messenia' AND
dat.Middle_Helladic IN( 'Yes', 'possible');

-- Δημιουργία πίνακα για την Ποιότητα των δεδομένων της Μεσοελλαδικής
CREATE TEMPORARY TABLE  Middle_Helladic
SELECT dat.site_no, dat.site, dat.region, dat.settlement, dat.cemetery, dat.Middle_Helladic, dat.area_ha, dat.topo_position, dat.Artificial, dat.landform_type, dat.relief_leveL,
sit.land_pct_cultivated, sit.land_irrigated_ha, sit.sea_reach, sit.comm_class, sit.comm_uncertainty, sit.water_access_class, 
sit.strategic_primary_class, sit.radius_km, sit.hectares, sit.population_data, sit.population_cat			
FROM temp_table_Middle AS dat
JOIN Register AS sit
ON dat.site_no = sit.site_no;



SELECT topo_position, count(topo_position) AS Total_number_per_topographic_zone,
ROUND( 100 * count(*) 
/ (select count(topo_position) as pct_of_classified FROM Middle_Helladic WHERE topo_position IS NOT NULL),2) AS percent
FROM Middle_Helladic
WHERE topo_position IS NOT NULL
GROUP BY  topo_position
ORDER BY Total_number_per_topographic_zone DESC;





