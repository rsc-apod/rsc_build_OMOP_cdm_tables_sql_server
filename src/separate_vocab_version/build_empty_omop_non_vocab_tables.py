"""
Bare-bones runner 
WARNING: this has no error handling and no rollback. 

This script 
1) does not build, index or constrain any vocab tables
2) does not add any indexes (or primary Keys, or constraints) as should do that after build the tables.

A mod of this file (or an edited duplicate) could do the indexing and also constraint checking post build?

"""

import re, sys

from sql_helpers import get_connection

def run_sql_file(cursor, sql_file, db_and_schema):
    sql_text = open(sql_file, "r", encoding="utf-8").read()
    db,schema=db_and_schema.split(".")
    sql_text=re.sub(r'\$\(CDM_DATABASE\)', db, sql_text)
    sql_text=re.sub(r'\$\(CDM_SCHEMA\)', schema, sql_text)
    # print(f"Will execute SQL:\n{sql_text}")
    cursor.execute(sql_text)

requested_db_and_schema = sys.argv[1]

connection = get_connection()
cursor = connection.cursor()

cursor.execute("SET NOCOUNT ON; SET XACT_ABORT ON;")

run_sql_file(cursor=cursor, sql_file="sql/non_vocab/OMOPCDM_sql_server_5.4_ddl_separate_vocab.sql", db_and_schema=requested_db_and_schema)

## these might be run in another version post build
#run_sql_file(cursor=cursor, sql_file="sql/OMOPCDM_sql_server_5.4_primary_keys_separate_vocab.sql", db_and_schema=requested_db_and_schema)
#run_sql_file(cursor=cursor, sql_file="sql/OMOPCDM_sql_server_5.4_indices_separate_vocab.sql", db_and_schema=requested_db_and_schema)
#run_sql_file(cursor=cursor, sql_file="sql/OMOPCDM_sql_server_5.4_constraints_separate_vocab_cdm_to_cdm.sql", db_and_schema=requested_db_and_schema)

connection.commit()
connection.close()
