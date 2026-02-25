# Archaeological Finds Database (SQL Data Project)

## Overview

This project presents a structured SQL database of prehistoric archaeological sites in Messenia and Elis (Greece), based on the regional survey data published in:

The Minnesota Messenia Expedition:
Reconstructing a Bronze Age Regional Environment
McDonald & Rapp 1972

The original publication contains unstructured textual descriptions rather than a usable dataset.  
This project transforms the original source into a reproducible relational database and provides analytical queries for archaeological interpretation.

The goal of the project is:

- Transform historical archaeological records into structured data
- Apply deterministic data cleaning
- Build a reproducible SQL pipeline
- Perform spatial and chronological analysis of archaeological sites

The database was originally developed as part of a postgraduate thesis in Prehistoric Archaeology and later redesigned as a data engineering and data analysis project.

---

## Data Model

The database consists of two main tables:

### `umme_sites_messenia`

Contains topographical and geographical information:

- site_no (Primary Key)
- location_desc
- physical_desc
- region
- geomorphology_class
- topographic_zone

### `umme_archaelogical_data`

Contains archaeological information:

- site_no (Foreign Key)
- bibliography
- archaeological_desc
- pottery_analysis
- extent_desc
- area_ha
- settlement_or_cemetery

The tables are connected using:
primary_key-site_no

This allows flexible joins between archaeological and topographical data.

---

## Pipeline

The pipeline follows a layered structure:

### Raw Layer

Original survey data inserted without modification.

Tables:

- UMME_sites_messenia
- UMME_archaelogical_data

These tables preserve the original information.

---

### Clean Layer

Derived fields are generated using deterministic transformations:

Examples:

- Region classification
- Geomorphology classification
- Topographic zones
- Site area extraction from text descriptions
- Settlement vs Cemetery classification

All transformations are implemented using SQL.

---

### Bibliography Processing

Bibliographic references are normalized into structured rows.

Steps:

1. Bibliography split into references
2. Extraction of:

- Source
- Year
- Pages

Tables:

- site_bibliography
- sources

---

### Curated Layer

Manual corrections are stored separately and merged using views.

Tables:

- SOURCES_NON_AUTOMATED_CHANGES
- umme_sites_messenia_NON_AUTOMATED_CHANGES
- umme_archaelogical_data_NON_AUTOMATED_CHANGES

Views:

- curated_view
- curated_view_archaeological_data

This preserves data traceability.

---

## Analytical Queries

Example analyses included:

### Chronological analysis

- Early Helladic sites
- Middle Helladic sites
- Continuity between periods

### Spatial analysis

- Distribution by region
- Distribution by topographic zone

### Site size analysis

- Largest sites
- Size categories
- Regional averages

---

## How to Run

1. Run sql/00_bootstrap/001_create_db.sql
2. Run sql/01_raw/010_raw_schema.sql
3. Load CSV files from data/sample/
4. Run sql/02_clean scripts
5. Run sql/03_bibliography scripts
6. Query curated views



The database can be recreated from scratch.

---

## Design Decisions

Key design choices:

- Separation of topographic and archaeological data
- Use of primary and foreign keys
- Derived columns created only in clean layer
- Manual fixes stored as data
- Reproducible transformations

---

## Technologies

- MySQL 8
- SQL (CTEs, window functions, REGEXP)
- Git / GitHub
- CSV data ingestion

---

## Limitations

- Data derived from a single historical source
- Some classifications depend on textual interpretation
- Incomplete site size information

---

## Author


Nikos Antonopoulos  
MSc Prehistoric Archaeology  
Data Analysis / Data Engineering