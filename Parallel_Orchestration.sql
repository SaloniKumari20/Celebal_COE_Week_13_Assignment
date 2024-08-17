/*3. Create a Parallel Orchestration Notebook */

from concurrent.futures import ThreadPoolExecutor

def run_notebook(notebook_path):
    dbutils.notebook.run(notebook_path, timeout_seconds=3600)

with ThreadPoolExecutor() as executor:
    futures = [
        executor.submit(run_notebook, "/path/to/Notebook_A"),
        executor.submit(run_notebook, "/path/to/Notebook_B"),
        executor.submit(run_notebook, "/path/to/Notebook_C"),
        executor.submit(run_notebook, "/path/to/Notebook_D")
    ]
    
    # Wait for all notebooks to complete
    for future in futures:
        future.result()

print("Parallel orchestration completed.")
