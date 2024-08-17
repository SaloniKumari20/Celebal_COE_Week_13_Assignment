
/* 5. Schedule the Jobs Using Jobs API */
# Save this file as get_databricks_job_run.sh
#!/bin/bash

curl -X GET https://<databricks-instance>/api/2.1/jobs/runs/get \
--header "Authorization: Bearer <token>" \
--header "Content-Type: application/json" \
--data '{
  "run_id": <run_id>
}'
