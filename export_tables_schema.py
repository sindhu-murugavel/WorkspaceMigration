counter = 0
ddls = []
for db_name, *_ in spark.catalog.listDatabases():
 #if db_name != 'test': continue
 for table_name, *_, is_tmp in spark.catalog.listTables(db_name):
   if is_tmp: 
     continue
   try:
     table_ddl = spark.sql(f'SHOW CREATE TABLE {db_name}.{table_name}').first()[0]
     table_ddl = table_ddl.replace('CREATE TABLE', 'CREATE TABLE IF NOT EXISTS')
     ddls.append(table_ddl)
   except Exception as e:
     print(f'Problem dumping DDL for {db_name}.{table_name}: {e}')
   counter += 1
   if counter % 100 == 0: print(f'Exported {counter} tables')
dbutils.fs.put('/tmp/metastore-export.sql',
              ("-- Databricks notebook source\n" +
              ("\n-- COMMAND ----------\n".join(ddls))),
              overwrite=True)
