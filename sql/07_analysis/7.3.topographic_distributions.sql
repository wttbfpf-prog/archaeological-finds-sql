-- Δημιουργία πίνακα
create table Early_Helladic
select dat.site_no, dat.site, sit.region, dat.settlement_or_cemetery, dat.pottery_analysis, dat.area_ha, sit.geomorphology_class, sit.topographic_zone
from archaeological_finds.umme_archaelogical_data as dat
join archaeological_finds.umme_sites_messenia as sit
on dat.site_no = sit.site_no
where pottery_analysis like 'EH%'
or pottery_analysis like '% EH%';

select * from Early_Helladic;

-- Αριθμός Πρωτοελλαδικών θέσεων ανά περιοχή
select count(*) as Messenia, (select count(*) 
from Early_Helladic
where region = 'Elis') as Elis from Early_Helladic
where region = 'Messenia';


-- Δημιουργίας στήλης πίνακα για την Ποιότητα των δεδομένων της Πρωτοελλαδικής
alter table Early_Helladic
add Quality_of_data text null;

update Early_Helladic
set Quality_of_data = case
when pottery_analysis regexp '(EH\\?)' then 'EH?'
when pottery_analysis regexp 'EH ' then'EH'
when pottery_analysis regexp 'EH;' then 'EH'
END;


-- Σύνολο θέσων με βάση την ποιότητα των δεδομένων
select count(*) as identified_sites, (select count(*) 
from Early_Helladic
where Quality_of_data = 'EH?' ) as undentified_sites from Early_Helladic
where Quality_of_data  = 'EH';


-- Τα ποιοτηκά δεδομένα για τους οικισμόυς της Πρωτοελλαδικής περιόδου
select row_number() over(order by area_ha desc) as n, site, region, area_ha, topographic_zone, quality_of_data, settlement_or_cemetery from Early_Helladic
where region = 'Messenia' 
and Quality_of_data = 'EH' 
and settlement_or_cemetery  not in ('Cemetery', 'Unidentified Settlement and cemetery');

select topographic_zone, count(topographic_zone) AS Total_number_per_topographic_zone
from Early_Helladic
where region = 'Messenia' and
topographic_zone != 'unclassified'
group by topographic_zone;

SELECT ROUND( 100 * SUM(topographic_zone = 'Hilly') 
/ NULLIF(SUM(topographic_zone !='unclassified'), 0), 2) AS percent_hilly
FROM Early_Helladic
WHERE region = 'Messenia';

select topographic_zone, count(topographic_zone) AS Total_number_per_topographic_zone,
ROUND( 100 * count(*) 
/ (select count(topographic_zone) as pct_of_classified FROM Early_Helladic where topographic_zone !='unclassified' and region = 'Messenia'),2) as percent
from Early_Helladic
where region = 'Messenia' and
topographic_zone != 'unclassified'
group by topographic_zone
order by Total_number_per_topographic_zone desc;


-- Δημιουργία πίνακα για τις θέσεις της Μεσοελλαδικής περιόδου
CREATE TABLE Middle_Helladic 
select dat.site_no, dat.site, sit.region, dat.settlement_or_cemetery, dat.pottery_analysis, dat.area_ha, sit.geomorphology_class, sit.topographic_zone
from archaeological_finds.umme_archaelogical_data as dat
join archaeological_finds.umme_sites_messenia as sit
on dat.site_no = sit.site_no
where pottery_analysis like 'MH%'
or pottery_analysis like '% MH%';

-- Δημιουργίας στήλης πίνακα για την Ποιότητα των δεδομένων της Μεσοελλαδικής
alter table Middle_Helladic
add Quality_of_data text null;

-- Σύνολο θέσων με βάση την ποιότητα των δεδομένων
update Middle_Helladic
set Quality_of_data = case
when pottery_analysis regexp '(MH\\?)' then 'MH?'
when pottery_analysis regexp 'MH ' then'MH'
when pottery_analysis regexp 'MH;' then 'MH'
END;


select topographic_zone, count(topographic_zone) AS Total_number_per_topographic_zone,
ROUND( 100 * count(*) 
/ (select count(topographic_zone) as pct_of_classified FROM Middle_Helladic where topographic_zone !='unclassified' and region = 'Messenia'),2) as percent
from Middle_Helladic
where region = 'Messenia' and
topographic_zone != 'unclassified'
group by topographic_zone
order by Total_number_per_topographic_zone desc;


select * from Middle_Helladic;

