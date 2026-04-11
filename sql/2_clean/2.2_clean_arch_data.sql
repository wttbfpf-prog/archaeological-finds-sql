--  Ένταξη της του μεγέθους της περιοχής σε στήλη στον πίνακα
ALTER TABLE umme_archaeological_data
ADD COLUMN area_ha DECIMAL(10,2) NULL;

UPDATE umme_archaeological_data
SET area_ha = CAST(REGEXP_SUBSTR(extent_desc, '[0-9]+(\\.[0-9]+)?(?=\\s*ha)') AS DECIMAL(10,2))
WHERE extent_desc IS NOT NULL
AND extent_desc REGEXP 'ha';


-- Δημιουργία λειτουργικών στηλών κατηγοριοποίησης για τους οικισμούς και τα νεκροταφεία με βάση τη ποίτητα των δεδομένων.
ALTER TABLE umme_archaeological_data 
ADD settlement TEXT NULL;


UPDATE umme_archaeological_data 
SET settlement = CASE
WHEN archaeological_desc REGEXP 'HAB\\?' THEN 'Maybe'
WHEN archaeological_desc REGEXP 'HAB'  THEN 'Yes'
ELSE 'No'
END;


ALTER TABLE umme_archaeological_data 
ADD cemetery TEXT NULL;

UPDATE umme_archaeological_data 
SET cemetery = CASE
WHEN archaeological_desc REGEXP  'CEM\\?' THEN 'Maybe'
WHEN archaeological_desc REGEXP 'CEM' THEN 'Yes'
ELSE 'No'
END;

ALTER TABLE umme_archaeological_data
ADD COLUMN  Early_Helladic TEXT NULL,
ADD COLUMN Middle_Helladic TEXT NULL,
ADD COLUMN Late_Helladic TEXT NULL;


UPDATE umme_archaeological_data
SET Early_Helladic =
CASE WHEN pottery_analysis REGEXP '(EH\\?)' THEN 'possible'
WHEN pottery_analysis REGEXP 'EH ' THEN'Yes'
WHEN pottery_analysis REGEXP 'EH;' THEN 'Yes'
ELSE 'no_data'
END;

UPDATE umme_archaeological_data
SET Middle_Helladic =
CASE 
WHEN pottery_analysis REGEXP '(MH\\?)' THEN 'possible'
WHEN pottery_analysis REGEXP 'MH ' THEN'Yes'
WHEN pottery_analysis REGEXP 'MH;' THEN 'Yes'
ELSE 'no_data'
END;

UPDATE umme_archaeological_data
SET Late_Helladic = 
CASE
WHEN pottery_analysis REGEXP '(LH\\?)' THEN 'possible'
WHEN pottery_analysis REGEXP 'LH' THEN'Yes'
WHEN pottery_analysis REGEXP 'LH;' THEN 'Yes'
ELSE 'no_data'
END;


