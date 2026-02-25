-- Χειρουργικό καθαρίσμα σε γραμμές που δεν ακολούθησαν τους κανόνες για την ένταξη τους στον αυτοματισμό.

DROP TABLE IF EXISTS SOURCES_NON_AUTOMATED_CHANGES;
CREATE TABLE  SOURCES_NON_AUTOMATED_CHANGES(
site_no INT NOT NULL,
reference_id INT NOT NULL,
source TEXT NULL,
year TEXT NULL,
PAGES TEXT NULL,
REASON TEXT NULL,
created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (site_no, reference_id))
;
INSERT INTO SOURCES_NON_AUTOMATED_CHANGES (site_no, reference_id, year, reason)
VALUES (1, 1, '1939,52', 'Combined year pattern in reference');


INSERT INTO SOURCES_NON_AUTOMATED_CHANGES(site_no, reference_id, pages, reason)
VALUES
(42, 1, '42-43, Fig.55', 'Pages include figure reference'),
(71, 9, '125-126', 'Normalize pages'),
(94, 2, '116-125', 'Normalize pages'),
(104, 4, '4,13', 'Pages are two numbers separated by comma'),
(124, 5, '99', 'Single page'),
(135, 1, '74-79', 'Normalize pages'),
(203, 2, '40-41', 'Normalize pages'),
(108, 4, '424-25', 'Normalize pages'),
(171, 8, '61-78', 'Normalize pages'),
(196, 3, '178', 'Single page');

DROP VIEW IF EXISTS Curated_sources;
CREATE VIEW Curated_sources AS
SELECT s.site_no,
  s.reference_id,
  COALESCE(d.source, s.source) AS source,
  COALESCE(d.year, s.year) AS year,
  COALESCE(d.pages, s.pages) AS pages
FROM SOURCES as s
LEFT JOIN SOURCES_NON_AUTOMATED_CHANGES as d
ON s.site_no = d.site_no AND s.reference_id = d.reference_id;











