-- Δημιουργία προσωρινού πίνακα με διαχωρισμό των πηγών ανα θέση*(κύριο χαρακτηριστικό είναι η παρουσία άνω τελείας. Ο διαχωρισμός γίνεται με τη χρήση αναδρομικού cte για την δημιουργία ταυτότητας για κάθε πηγή.
create temporary table site_bibliography as
WITH RECURSIVE num as(SELECT 1 as n 
UNION ALL
SELECT n + 1
FROM num
WHERE n < 20)

select dat.site_no, nums.n as reference_id,
TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(dat.bibliography, ';', nums.n), ';', -1)) as bibliography_reference
from umme_archaeological_data as dat
JOIN num as nums 
on nums.n <= 1 + (LENGTH(dat.bibliography) - LENGTH(REPLACE(dat.bibliography, ';', ''))) 
WHERE dat.bibliography IS NOT NULL
ORDER BY dat.site_no, nums.n;


-- Δημιουργία νέων στηλών με βάση την χρονιά δημοσίευσης και τις σελίδες αναφορές
CREATE TABLE sources as
WITH s AS (SELECT site_no, reference_id, bibliography_reference, 
    CASE
      WHEN bibliography_reference REGEXP '^(18|19|20)[0-9]{2}' THEN NULL
      ELSE TRIM(REGEXP_SUBSTR(bibliography_reference, '^[[:alpha:]][[:alpha:] .&-]*'))
    END AS source_raw
  FROM site_bibliography), g AS (SELECT s.*, 
regexp_substr(bibliography_reference, '(18|19|20)[0-9]{2}') as year_of_reference,
TRIM(SUBSTRING_INDEX(bibliography_reference, ',', -1)) as pages_raw,
    SUM(source_raw IS NOT NULL) OVER (PARTITION BY site_no ORDER BY reference_id ) AS grp
  FROM s)
SELECT site_no, reference_id, bibliography_reference, MAX(source_raw) OVER (PARTITION BY site_no, grp) AS source, year_of_reference,
  case
WHEN bibliography_reference NOT LIKE '%,%' THEN NULL 
 WHEN pages_raw regexp '(18|19|20)[0-9]{2}' THEN NULL
 WHEN pages_raw regexp '^[[:alpha:]][[:alpha:] .&-]*' THEN NULL  
ELSE pages_raw
END AS pages
FROM g
ORDER BY site_no, reference_id;

ALTER TABLE sources
ADD PRIMARY KEY (site_no, reference_id);


-- Αλλαγή της παλιάς στήλης για την χρονολογία της δημοσίευσης και δημιουργία καινούργιας στήλης με ανανέωση των όρων εύρεσης της χρονολογίας.
ALTER TABLE sources
DROP COLUMN year_of_reference;
 ALTER TABLE SOURCES
ADD COLUMN year text null;


UPDATE SOURCES
SET year = 
regexp_substr(bibliography_reference, '(18|19|20)[0-9]{2}([–-]\s?[0-9]{1,2})?');