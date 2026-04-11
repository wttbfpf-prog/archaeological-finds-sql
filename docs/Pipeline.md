This pipeline is designed to transform descriptive archaeological records
into a structured dataset suitable for quantitative and comparative analysis.

It separates raw ingestion, automated transformations, and manual corrections
to ensure transparency, reproducibility, and data quality.


# Data Pipeline

The database pipeline follows three layers.

## Raw Layer

Original data imported without modification.

Tables:

- sites_messenia
- archaelogical_data
- register


## Clean Layer

Derived variables created using SQL:

- Region
- Geomorphology class
- Topographic zone
- Site area
- Settlement classification


## Curated Layer

Manual corrections are stored separately and applied through views.

Tables:

- *_non_automated_changes

Views:

- curated_sites
- curated_arch_data
- curated_sources