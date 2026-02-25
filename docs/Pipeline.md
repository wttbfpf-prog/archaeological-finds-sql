# Data Pipeline

The database pipeline follows three layers.

## Raw Layer

Original data imported without modification.

Tables:

- UMME_sites_messenia
- UMME_archaelogical_data


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