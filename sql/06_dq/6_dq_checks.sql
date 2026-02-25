DROP TABLE IF EXISTS DATA_DOCUMENTATION;
CREATE TABLE DATA_DOCUMENTATION(
name VARCHAR(100) NOT NULL,
severity ENUM('error', 'warn', 'info') NOT NULL DEFAULT 'info',
sql_query LONGTEXT NULL,
fail_count INT,
details TEXT,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (name));

;

INSERT INTO DATA_DOCUMENTATION(name, severity, sql_query, fail_count, details) 
VALUES
('missing_topographic', 'info', 'SELECT *
FROM curated_view
WHERE geomorphology_class = ''Unclassified''', 116, 'small number of identification');

ALTER TABLE DATA_DOCUMENTATION
ADD COLUMN failure_rate DECIMAL(5,2) NULL;
ALTER TABLE DATA_DOCUMENTATION
ADD COLUMN STATUS TEXT NULL;
ALTER TABLE DATA_DOCUMENTATION
ADD COLUMN total_count int NULL;

UPDATE DATA_DOCUMENTATION 
SET total_count = (SELECT COUNT(*) FROM curated_sites),
failure_rate = round(100 * fail_count /total_count,2),
STATUS =
CASE WHEN round(100 * fail_count /total_count,2) > 50 THEN 'FAIL'
WHEN round(100 * fail_count /total_count,2)  > 30 THEN 'Needs improvement'
WHEN round(100 * fail_count /total_count,2)  > 20 THEN 'Warning'
ELSE 'PASS'
END;

SELECT * FROM DATA_DOCUMENTATION;


