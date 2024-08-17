/*1. Create 4 Notebooks to Read and Insert/Update Data */
/*DeltaTable_1*/
from pyspark.sql import SparkSession
from delta.tables import DeltaTable

# Initialize Spark session
spark = SparkSession.builder.appName("Notebook_A").getOrCreate()

# Read from source table
source_df = spark.table("source_table")

# Insert or update logic for DeltaTable_1
delta_table = DeltaTable.forPath(spark, "/mnt/delta/DeltaTable_1")

# Perform upsert (merge) or insert based on key columns
delta_table.alias("tgt").merge(
    source_df.alias("src"),
    "tgt.key_column = src.key_column"
).whenMatchedUpdateAll().whenNotMatchedInsertAll().execute()

print("Notebook_A completed.")


/*DeltaTable_2*/
# Similar logic to Notebook_A, just change DeltaTable path
delta_table = DeltaTable.forPath(spark, "/mnt/delta/DeltaTable_2")
# Rest of the code remains the same


/*DeltaTable_3*/
# Similar logic to Notebook_A, just change DeltaTable path
delta_table = DeltaTable.forPath(spark, "/mnt/delta/DeltaTable_3")
# Rest of the code remains the same

/*DeltaTable_4 and DeltaTable_5 */
# Similar logic to Notebook_A, just change DeltaTable path
delta_table_4 = DeltaTable.forPath(spark, "/mnt/delta/DeltaTable_4")
delta_table_5 = DeltaTable.forPath(spark, "/mnt/delta/DeltaTable_5")
# Rest of the code remains the same

