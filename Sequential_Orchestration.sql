/* 4. Create Jobs for the Orchestration Notebooks Using Databricks Jobs API*/

curl -X POST https://<databricks-instance>/api/2.1/jobs/create \
--header "Authorization: Bearer <token>" \
--header "Content-Type: application/json" \
--data '{
  "name": "Sequential_Orchestration_Job",
  "new_cluster": {
    "spark_version": "7.3.x-scala2.12",
    "node_type_id": "i3.xlarge",
    "num_workers": 2
  },
  "notebook_task": {
    "notebook_path": "/path/to/Sequential_Orchestration"
  }
}'

/*Parallel Job:*/
curl -X POST https://<databricks-instance>/api/2.1/jobs/create \
--header "Authorization: Bearer <token>" \
--header "Content-Type: application/json" \
--data '{
  "name": "Parallel_Orchestration_Job",
  "new_cluster": {
    "spark_version": "7.3.x-scala2.12",
    "node_type_id": "i3.xlarge",
    "num_workers": 2
  },
  "notebook_task": {
    "notebook_path": "/path/to/Parallel_Orchestration"
  }
}'

