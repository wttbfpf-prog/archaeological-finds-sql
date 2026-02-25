-- Εμφάνιση όλων των θέσεων με Πρωτοελλαδικά ευρήματα.
select row_number() over(order by site) as n, site, pottery_analysis from archaeological_finds.umme_archaelogical_data
where pottery_analysis like 'EH%'
or pottery_analysis like '% EH%';

-- Εμφάνιση όλων των θέσεων με Μεσοελλαδικά ευρήματα.
select row_number() over(order by site) as n, site, pottery_analysis from archaeological_finds.umme_archaelogical_data
where pottery_analysis like '%MH%'
OR pottery_analysis like '% MH';

-- Συνέχιση κατοίκησης από την Πρωτοελλαδική στη Μεσοελλαδική περίοδο.
select row_number() over(order by site) as n, site, pottery_analysis from archaeological_finds.umme_archaelogical_data
where pottery_analysis like '%MH%'
AND (pottery_analysis like 'EH%'
OR pottery_analysis like '% MH%'
OR pottery_analysis like '% EH%');

-- Διαφορα αριθμού οικισμών από την Πρωτοελλαδική στην Μεσοελλαδική
select (select count(*) as Middle_Helladic from archaeological_finds.umme_archaelogical_data where pottery_analysis like '%MH%'
OR pottery_analysis like '% MH') - (select count(*) as Early_Helladic from archaeological_finds.umme_archaelogical_data
where pottery_analysis like 'EH%'
OR pottery_analysis like '% EH%')  as Sites_difference_by_Period;

-- Ποσοστό αύξησης μεταξύ των περιόδων
SELECT ROUND(100 * (MH - EH) / EH) AS percent_increase
FROM (SELECT SUM(pottery_analysis LIKE '%MH%' OR pottery_analysis LIKE '% MH%') AS MH,
SUM(pottery_analysis LIKE 'EH%' OR pottery_analysis LIKE '% EH%') AS EH
FROM archaeological_finds.umme_archaelogical_data) x;
