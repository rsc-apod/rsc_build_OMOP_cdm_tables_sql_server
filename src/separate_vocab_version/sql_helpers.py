import shutil

import pyodbc

def get_conn_str():
    conn_str = (
        f'DRIVER={{ODBC Driver 18 for SQL Server}};'
        f'SERVER=127.0.0.1,1433;'
        # f'DATABASE=omop1;'
        f'UID=sqlserver;'
        f'PWD=sqlserver;'
        f'Encrypt=no;'
        f'TrustServerCertificate=yes'
        )
    return conn_str

def get_connection(conn_str=None):
    if conn_str is None:
        conn_str=get_conn_str()
    return pyodbc.connect(conn_str)

def get_cursor(connection=None):
    if connection is None:
        connection=get_connection()
    return connection.cursor()




