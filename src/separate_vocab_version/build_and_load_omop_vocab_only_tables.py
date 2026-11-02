import re, sys, time

from sql_helpers import get_connection


def run_sql_file(
    cursor=None, sql_file=None, db_and_schema=None, vocab_files_directory=None
):
    sql_text = open(sql_file, "r", encoding="utf-8").read()
    db, schema = db_and_schema.split(".")
    sql_text = re.sub(r"\$\(VOCAB_DATABASE\)", db, sql_text)
    sql_text = re.sub(r"\$\(VOCAB_SCHEMA\)", schema, sql_text)
    sql_text = re.sub(r"\$\(VOCAB_DIR\)", vocab_files_directory, sql_text)
    print(f"Executing processed version of {sql_file}")
    t0 = time.time()
    cursor.execute(sql_text)
    print(f"That took {time.time()-t0} seconds")


requested_db_and_schema = sys.argv[1]
vocab_files_directory = sys.argv[2]

connection = get_connection()
cursor = connection.cursor()

cursor.execute("SET NOCOUNT ON; SET XACT_ABORT ON;")

run_sql_file(
    cursor=cursor,
    sql_file="sql/vocab_only/OMOPCDM_sql_server_5.4_ddl.sql",
    db_and_schema=requested_db_and_schema,
    vocab_files_directory=vocab_files_directory,
)
connection.commit()

run_sql_file(
    cursor=cursor,
    sql_file="sql/vocab_only/vocab_load.sql",
    db_and_schema=requested_db_and_schema,
    vocab_files_directory=vocab_files_directory,
)
connection.commit()

run_sql_file(
    cursor=cursor,
    sql_file="sql/vocab_only/OMOPCDM_sql_server_5.4_primary_keys.sql",
    db_and_schema=requested_db_and_schema,
    vocab_files_directory=vocab_files_directory,
)
connection.commit()

run_sql_file(
    cursor=cursor,
    sql_file="sql/vocab_only/OMOPCDM_sql_server_5.4_indices.sql",
    db_and_schema=requested_db_and_schema,
    vocab_files_directory=vocab_files_directory,
)
connection.commit()

run_sql_file(
    cursor=cursor,
    sql_file="sql/vocab_only/OMOPCDM_sql_server_5.4_constraints.sql",
    db_and_schema=requested_db_and_schema,
    vocab_files_directory=vocab_files_directory,
)
connection.commit()

connection.commit()
connection.close()
