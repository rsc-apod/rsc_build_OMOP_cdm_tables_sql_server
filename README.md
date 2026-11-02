# rsc_build_cdm_tables_sql_server

This contains sql code to build cdm tables and load in vocab in two different ways

1. All as one database (src/standard_single_db_version)

2. As separate vocab and non-vocab databases (src/separate_vocab_version)

The all as one database version is just a set of SQL scripts

The separate databases version has python scripts that process and execute parameterised SQL scripts.