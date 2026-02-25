--  Ένταξη της του μεγέθους της περιοχής σε στήλη στον πίνακα
ALTER TABLE umme_archaeological_data
ADD COLUMN area_ha DECIMAL(10,2) NULL;

UPDATE umme_archaeological_data
SET area_ha = CAST(REGEXP_SUBSTR(extent_desc, '[0-9]+(\\.[0-9]+)?(?=\\s*ha)') AS DECIMAL(10,2))
WHERE extent_desc IS NOT NULL
AND extent_desc REGEXP 'ha';


-- Δημιουργία λειτουργικής στήλης κατηγοριοποίησης για τους οικισμούς και τα νεκροταφεία με βάση τη ποίτητα των δεδομένων.
alter table umme_archaeological_data 
add settlement_or_cemetery text null;

update umme_archaeological_data 
set settlement_or_cemetery = case
when archaeological_desc regexp 'HAB' AND
archaeological_desc regexp 'CEM\\?' 
THEN 'Settlement and unidentified cemetery'
when archaeological_desc regexp 'HAB\\?' AND
archaeological_desc regexp 'CEM'
 THEN 'Unidentified Settlement and cemetery'
when archaeological_desc regexp 'HAB' AND
archaeological_desc regexp 'CEM' 
THEN 'Settlement and cemetery'
when archaeological_desc regexp 'HAB'
AND not archaeological_desc regexp 'CEM' 
then 'Settlement'
when archaeological_desc regexp 'CEM'
AND not archaeological_desc regexp 'HAB' 
then 'Cemetery' 
end
;

-- Διαγραφή στήλης με τις θέσεις
Alter table umme_sites_messenia
drop column site;


