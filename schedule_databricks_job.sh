/* 5. Schedule the Jobs Using Jobs API */
# Save this file as schedule_databricks_job.sh

#!/bin/bash

curl -X POST https://<databricks-instance>/api/2.1/jobs/runs/submit \
--header "Authorization: Bearer <token>" \
--header "Content-Type: application/json" \
--data '{
  "job_id": <job_id>,
  "run_name": "Scheduled_Job_Run",
  "timeout_seconds": 3600,
  "schedule": {
    "quartz_cron_expression": "0 0 * * * ?", # Every day at midnight
    "timezone_id": "UTC"
  }
}'
