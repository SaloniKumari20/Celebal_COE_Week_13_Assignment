/*2. Create an Orchestration Notebook Using dbutils */

dbutils.notebook.run("/path/to/Notebook_A", timeout_seconds=3600)
dbutils.notebook.run("/path/to/Notebook_B", timeout_seconds=3600)
dbutils.notebook.run("/path/to/Notebook_C", timeout_seconds=3600)
dbutils.notebook.run("/path/to/Notebook_D", timeout_seconds=3600)

print("Sequential orchestration completed.")
